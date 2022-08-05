from subprocess import run, CalledProcessError
from sys import exit
from collections import OrderedDict
# Provide your own dict, format described below
from authors import authors


def run_git_commit(message: str):
    command = ["git", "commit", "-m", message]
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
    author_alias = author[0]
    author_data = author[1]
    return f"⦔ {author_alias} -> {get_full_name_from(author_data)}"


def get_full_name_from(co_auth_data: tuple) -> str:
    """Discard all data except for full author name"""
    return co_auth_data.split(':')[1].split('<')[0].strip()


def sort(authors: dict) -> dict:
    """Sort authors alphabetically by alias"""
    return OrderedDict(sorted(authors.items()))


if __name__ == "__main__":
    try:
        print("Available Authors:")
        print_authors(sort(authors))
        co_authors = input(
            '\nEnter your coworkers initials separated by spaces: \n'
        )
        message = input('Enter your commit message: \n')
        run_git_commit(build_commit_message(message, co_authors))
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
