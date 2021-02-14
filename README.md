# Describe
As time goes on, I add these tips and cheatsheets so that I can make better use of them as I need to.

- [Set custom shell](shell/README.md)

- [cheatsheets](cheatsheets) - for find key word in cheatsheets use:
    ```sh
    $ grep -nw1 keyword file.sh
    ```

# Convert Python 2 > Python 3
During upgrade python by carfully on this keys:
```python
- print
- unicode -> str
- map() –> add before list() # In Python 3, map() returns an iterable while, in Python 2, it returns a list.
```
