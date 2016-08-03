## iCloud CSV to VCF convertor

I was facing a problem that I have to batch import all my workmates
into my iPhone through iCloud Contacts, which supports VCard.

So I wrote this simple ruby program.

The `.csv` file must be like this:

	ContactName,Orgnazation,CellPhone,Tellphone

Then this program will generate an `all.vcf` file which can be
used to import all your workmates into your contact book.

It needs ruby (1.9.2+)

LICENSE:MIT

Marguerite
