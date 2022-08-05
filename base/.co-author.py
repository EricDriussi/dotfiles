import subprocess
import sys
from collections import OrderedDict

from authorsMap import authors


def build_commit(message: str, comma_separated_aliases: str):
    co_authors = map_to_available_authors(comma_separated_aliases.split(" "))
    formatted_message = f"{message}\n\n{co_authors}"

    command = ["git", "commit", "-m", formatted_message]

    subprocess.run(command)


def map_to_available_authors(aliases: list) -> str:
    return "\n".join(authors[alias] for alias in aliases)


def print_authors_two_cols(authors: dict):
    odd_number_of_authors = len(authors) % 2 != 0
    even_number_of_authors = len(authors) % 2 == 0

    column_vert_length = int(len(authors) / 2)

    for index, first_col_author in enumerate(authors.items()):
        if index >= column_vert_length:
            if even_number_of_authors:
                break
            else:
                print_single_author(first_col_author)
                break

        second_col_author_index = column_vert_length + index
        if odd_number_of_authors:
            second_col_author_index += 1

        second_col_author = list(authors.items())[second_col_author_index]
        print_author_pair(first_col_author, second_col_author)


def print_single_author(author: tuple):
    print(format_author(author))


def print_author_pair(author1: tuple, author2: tuple):
    print(format_author(author1) + "\t\t" + format_author(author2))


def format_author(author: tuple) -> str:
    return "⦔ " + author[0] + " -> " + get_full_name_from(author)


def get_full_name_from(item: tuple) -> str:
    return item[1].split(':')[1].split('<')[0].strip()


if __name__ == "__main__":
    try:
        print("Available Authors:")
        print_authors_two_cols(authors)
        print()
        co_authors = input(
            'Enter your coworkers initials separated by spaces: \n')
        message = input('Enter your commit message: \n')
        build_commit(message, co_authors)
    except IndexError:
        print("INVALID PARAMETERS")
        sys.exit(1)
    except KeyError:
        print("INVALID ALIAS")
        sys.exit(1)
    else:
        sys.exit(0)
