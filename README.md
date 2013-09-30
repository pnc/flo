# Flo

Summarize failures that occurred in Amazon Simple Workflow (SWF) today.

It figures out what executions failed today and then gives you a summary
of the failures, sorted by frequency. So you can fix it.

![Flo](http://bios.weddingbee.com/pics/187249/Flo2.jpg)

## Installation

This is too grody for RubyGems. You're gonna need to:

    $ git clone https://github.com/pnc/flo.git
    $ cd flo
    $ bundle
    $ rake install

## Usage

      flo - Amazon Simple Workflow failure summary
            --region, -r <s>:   AWS region in which your domain resides (default: us-east-1)
            --domain, -d <s>:   Simple Workflow domain to query
              --show-all, -s:   List every failure separately
    --aws-access-key, -O <s>:   Defaults to the value of the AWS_ACCESS_KEY environment variable
    --aws-secret-key, -W <s>:   Defaults to the value of the AWS_SECRET_KEY environment variable
                  --help, -h:   Show this message

## Example

    $ flo -d your-domain

    UNTRAPPED ERROR: No Such Key (8 failures):
      /app/vendor/bundle/ruby/1.9.1/gems/aws-sdk-1.9.5/lib/aws/core/client.rb:360:in `return_or_raise'
      /app/vendor/bundle/ruby/1.9.1/gems/aws-sdk-1.9.5/lib/aws/core/client.rb:461:in `client_request'
      (eval):3:in `get_object'
      /app/vendor/bundle/ruby/1.9.1/gems/aws-sdk-1.9.5/lib/aws/s3/s3_object.rb:1282:in `get_object'
      /app/vendor/bundle/ruby/1.9.1/gems/aws-sdk-1.9.5/lib/aws/s3/s3_object.rb:1064:in `read'
         ...
    
      Failed executions:
        post-proc-3c0d8480-0c21-0131-beef-5ece7e3c4135
        post-proc-0d8796f0-0c20-0131-17f7-1eb53991e53c
        post-proc-3c0d8480-0c21-0131-beef-5ece7e3c4135
        post-proc-0d8796f0-0c20-0131-17f7-1eb53991e53c
        post-proc-d0f2cea0-0c12-0131-6315-3e638fae4aee
        post-proc-60d1c7a0-0c14-0131-bd73-5ece7e3c4135
        post-proc-768b77b0-0c01-0131-614d-3e638fae4aee
        post-proc-85ed34d0-0b87-0131-144c-3ad509f50bb3
    
    exception (1 failures):
      net.liftweb.json.JsonParser$ParseException: unknown token I
      Near:  ","location":{"x":In
      	at net.liftweb.json.JsonParser$Parser.fail(JsonParser.scala:234)
      	at net.liftweb.json.JsonParser$Parser.nextToken(JsonParser.scala:321)
    
      Failed executions:
        post-proc-556bec6b-3705-4642-8faa-c7f7043c2e8e

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
