class SingleProductModel {
  late final String prodectname;
  late String prodectimage;
  late String prodectmodel;
  late double prodectprice;
  late double prodectoldprice;
  late String prodectsecendimage;
  late String prodectthirdimage;
  late String prodectfourimage;

  SingleProductModel(
      {this.prodectname = 'a',
      this.prodectimage = 'b',
      this.prodectmodel = 'c',
      this.prodectprice = 0.0,
      this.prodectoldprice = 0.0,
      this.prodectsecendimage = 'd',
      this.prodectthirdimage = 'e',
      this.prodectfourimage = 'f'});
}
