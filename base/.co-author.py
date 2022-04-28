import subprocess
import sys

from authorsMap import authors


def buildCommit(message: str, commaSeparatedAliases: str):
    authors = mapToAvailableAuthors(commaSeparatedAliases.split(','))

    command = 'git commit -m "%s%s%s"' % (message, '\n\n', authors)

    subprocess.run(command, shell=True)


def mapToAvailableAuthors(authors2):
    return '\n'.join(authors[author] for author in authors2)


if __name__ == "__main__":
    try:
        buildCommit(
            message=sys.argv[2], commaSeparatedAliases=sys.argv[1])
    except IndexError:
        print('INVALID PARAMETERS')
        sys.exit(1)
    except KeyError:
        print('INVALID ALIAS')
        sys.exit(1)
    else:
        sys.exit(0)
