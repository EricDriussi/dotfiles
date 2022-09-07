from subprocess import run, CalledProcessError
from sys import exit, argv
import re
# Not used directly, but improves input() behavior when loaded
import readline
# Provide your own dict, format described below
from authors import authors


def run_git_commit(message: str, flags: str):
    if flags == '':
        command = ["git", "commit", "-m", message]
    else:
        command = ["git", "commit", flags, "-m", message]
    run(command)


def build_commit_message(message: str, comma_separated_aliases: str) -> str:
    """Formats the commit message with full co-author data"""
    co_authors = get_full_co_author_data_from(comma_separated_aliases, authors)
    return f"{message}\n\n{co_authors}"


def get_full_co_author_data_from(aliases: list, authors: dict) -> str:
    """
    Fetch data based on alias from a provided dict of the format:
    authors = {
        "[alias]": "Co-authored-by: [Full Author Name] <[author-GH-username]@users.noreply.github.com>",
        ...
    }
    Said dict should be available in the same directory as this script.
    """
    return "\n".join(authors[alias] for alias in aliases.split())


def print_authors(authors: dict):
    """Prints two colums of length equal to half the provided authors"""
    even_number_of_authors = len(authors) % 2 == 0
    col_vert_length = int(len(authors) / 2)
    if even_number_of_authors:
        print_even(authors, col_vert_length)
    else:
        print_odd(authors, col_vert_length)


def print_even(authors: dict, col_length: int):
    """Prints two authors per line"""
    for index, first_col_author in enumerate(authors.items()):
        if index >= col_length:
            break
        second_col_author_index = col_length + index
        second_col_author = list(authors.items())[second_col_author_index]
        print_author_pair(first_col_author, second_col_author)


def print_odd(authors: dict, col_length: int):
    """Prints two authors per line, except on last line"""
    for index, first_col_author in enumerate(authors.items()):
        if index >= col_length:
            print_single_author(first_col_author)
            break
        second_col_author_index = col_length + index + 1
        second_col_author = list(authors.items())[second_col_author_index]
        print_author_pair(first_col_author, second_col_author)


def print_single_author(author: tuple):
    print(format_author(author))


def print_author_pair(author1: tuple, author2: tuple):
    print(f"{format_author(author1)}\t\t{format_author(author2)}")


def format_author(author: tuple) -> str:
    """ASCII colors"""
    col_green = "\033[32m"
    col_purple = "\033[35m"
    col_cyan = "\033[36m"
    col_yellow = "\033[33m"
    col_reset = "\033[00m"
    author_alias = author[0]
    author_data = author[1]
    alias_prompt = f"{col_yellow}⦔ {col_purple}{author_alias} {col_green}->{col_reset}"
    full_name = f"{get_full_name_from(author_data)}"
    username = f"{col_cyan}[{get_username_from(author_data)}]  {col_reset}"
    return f"{alias_prompt} {full_name} {username}"


username_expression = re.compile(
    r"Co-authored-by:.+?<(.+?)@users.noreply.github.com>"
)


def get_username_from(co_auth_data: str) -> str:
    """Discard all data except for author GH username"""
    return username_expression.search(co_auth_data).group(1).strip()


name_expression = re.compile(
    r"Co-authored-by:(.+?)<.+?@users.noreply.github.com>"
)


def get_full_name_from(co_auth_data: str) -> str:
    """Discard all data except for full author name"""
    return name_expression.search(co_auth_data).group(1).strip()


def sort(authors: dict) -> dict:
    """Sort authors alphabetically by full name"""
    def by_name(author_tuple):
        author_data = author_tuple[1]
        return name_expression.search(author_data).group(1)
    return dict(sorted(authors.items(), key=by_name))


if __name__ == "__main__":
    try:
        print("Available Authors:")
        print_authors(sort(authors))
        co_authors = input(
            '\nEnter your coworkers aliases separated by spaces (or leave blank): \n'
        )
        message = input('Enter your commit message: \n')
        flags = "".join(argv[1:])

        run_git_commit(build_commit_message(
            message, co_authors), flags)
        exit(0)

    except IndexError:
        print("INVALID PARAMETERS")
        exit(1)
    except KeyError:
        print("INVALID ALIAS")
        exit(1)
    except CalledProcessError:
        print("GIT COMMAND FAILED")
        exit(1)
    except KeyboardInterrupt:
        exit(1)
