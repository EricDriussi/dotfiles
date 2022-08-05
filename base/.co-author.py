import subprocess
import sys

from authorsMap import authors


def build_commit(message: str, comma_separated_aliases: str):
    authors = map_to_available_authors(comma_separated_aliases.split(","))
    formatted_message = f"{message}\n\n{authors}"

    command = ["git", "commit", "-m", formatted_message]

    subprocess.run(command)


def map_to_available_authors(aliases: list) -> str:
    return "\n".join(authors[alias] for alias in aliases)


def get_full_name_from(item: tuple) -> str:
    return item[1].split(':')[1].split('<')[0].strip()


def get_author_string_from(item: tuple) -> str:
    return "⦔ " + item[0] + " -> " + get_full_name_from(item)


def print_authors(authors: dict):
    for index, item in enumerate(authors.items()):
        half = int(len(authors) / 2)
        if index >= half:
            break

        other_item = list(authors.items())[half + index]

        print(get_author_string_from(item) + "\t\t" +
              get_author_string_from(other_item) + "\n")


if __name__ == "__main__":
    try:
        print_authors(authors)
        co_authors = input(
            'Enter your coworkers initials separated by commas: \n')
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
