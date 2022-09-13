# Phoenix Generated

Getting started:

    # if you wish the run the examples against a DB
    docker-compose up -d
    make clean

Examples of different version of Phoenix using the generators:

    # Phoenix HTML

    mix phx.new phoenix_generated
    mix phx.gen.html Accounts User users name:string age:integer

    # Phoenix JSON

    mix phx.new phoenix_geneated --no-html --no-assets
    mix phx.gen.json Accounts User users name:string age:integer

    # Phoenix Live

    mix phx.new phoenix_generated
    mix phx.gen.live Accounts User users name:string age:integer

    # Phoenix Umbrella/Live

    mix phx.new phoenix_generated --umbrella
    mv phoenix_generated_umbrella/* phoenix_generated/.
    mix phx.gen.live Accounts User users name:string age:integer

    # Phoenix Torch

    mix phx.new phoenix_generated
    # configure https://github.com/mojotech/torch
    mix torch.install
    mix torch.gen.html Accounts User users name:string age:integer

Checkout the branches to see the different versions.
