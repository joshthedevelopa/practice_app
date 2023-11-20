class GiftOption {
  String name;
  List<GiftOption> options;
  int? selectedOption;

  GiftOption({
    this.name = '',
    required this.options,
    this.selectedOption,
  });
}

final gift = GiftOption(
  options: [
    GiftOption(
      name: "Car",
      options: [
        GiftOption(
          name: "Black",
          options: [
            GiftOption(name: "Sudan", options: []),
            GiftOption(name: "4x4", options: []),
            GiftOption(name: "PickUp", options: []),
          ],
        ),
        GiftOption(
          name: "White",
          options: [
            GiftOption(name: "BMW", options: []),
            GiftOption(name: "Land Cruiser", options: []),
            GiftOption(name: "Range Rover", options: []),
          ],
        ),
        GiftOption(
          name: "Blue",
          options: [
            GiftOption(name: "Tesla", options: []),
            GiftOption(name: "Honda", options: []),
            GiftOption(name: "Toyota", options: []),
          ],
        ),
      ],
    ),
    GiftOption(
      name: "Mobile Phone",
      options: [
        GiftOption(
          name: "iPhone",
          options: [
            GiftOption(name: "15 Pro", options: []),
            GiftOption(name: "12 Pro Max", options: []),
            GiftOption(name: "X", options: []),
          ],
        ),
        GiftOption(
          name: "Samsung",
          options: [
            GiftOption(name: "A03", options: []),
            GiftOption(name: "S12", options: []),
            GiftOption(name: "A53", options: []),
          ],
        ),
        GiftOption(
          name: "Xiaomi",
          options: [
            GiftOption(name: "12", options: []),
            GiftOption(name: "11", options: []),
            GiftOption(name: "11S", options: []),
          ],
        ),
      ],
    ),
    GiftOption(
      name: "Laptop",
      options: [
        GiftOption(
          name: "MacBook",
          options: [
            GiftOption(name: "M Series", options: []),
            GiftOption(name: "Air", options: []),
            GiftOption(name: "Pro", options: []),
          ],
        ),
        GiftOption(
          name: "Lenovo",
          options: [
            GiftOption(name: "Thinkpad", options: []),
            GiftOption(name: "Yoga", options: []),
            GiftOption(name: "Celeron", options: []),
          ],
        ),
        GiftOption(
          name: "Dell",
          options: [
            GiftOption(name: "XPS", options: []),
            GiftOption(name: "Alienware", options: []),
            GiftOption(name: "Inspiron", options: []),
          ],
        ),
      ],
    ),
  ],
);
