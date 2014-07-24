# API Exemples for PHP

Here you can download the example code used in the API-documentation (http://developer.fortnox.se/examples/code-examples/php/). Feel free to add new examples for other HTTP libraries or fix any bugs you find by pull request.

## curl.php
Example code for [PHP:cURL][1] from the PHP standard library.

Creating a new resource
```php
$raw_response = apiCall( 'POST', 'articles', '{"Article":{"Description":"My description"}}' );
$response = json_decode( $raw_response, true );
$article_number = $response[ 'Article' ][ 'ArticleNumber' ];
```

Updating a resource
```php
apiCall( 'PUT', 'articles/' . $article_number, '{"Article":{"Description":"My updated description"}}' )
```

Retriving an existing resource
```php
apiCall( 'GET', 'articles/' . $article_number );
```

Deleting a resource
```php
apiCall( 'DELETE', 'articles/' . $article_number )
```

Retriving a nonexistant resource
```php
apiCall( 'GET', 'articles/' . $article_number )
```

[1]: http://php.net/manual/en/book.curl.php

# Licence

The MIT License (MIT)

Copyright (c) 2013 Fortnox AB, Jesper Svensson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.