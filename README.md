## Docker PHPMD Task Runner

### Usage

``` docker run --rm -v $(pwd):$(pwd) gruen/phpmd phpmd $@ ```

Will run it in the current directory. You can specify any flags that you need.

You can alias this in you source file (.bashrc, .zshrc, etc) to make it simpler
