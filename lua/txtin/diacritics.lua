local treasure = {
  "α # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ά # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ὰ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾶ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἀ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἄ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἂ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἆ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἁ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἅ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἃ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ἇ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾴ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾲ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾷ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾀ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾄ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾂ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾆ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾁ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾅ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾃ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ᾇ # α ά ὰ ᾶ ἀ ἄ ἂ ἆ ἁ ἅ ἃ ἇ ᾳ ᾴ ᾲ ᾷ ᾀ ᾄ ᾂ ᾆ ᾁ ᾅ ᾃ ᾇ alpha",
  "ε # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "έ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "ὲ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "ἐ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "ἔ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "ἒ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "ἑ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "ἕ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "ἓ # ε έ ὲ ἐ ἔ ἒ ἑ ἕ ἓ epsilon",
  "η # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ή # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ὴ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ῆ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἠ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἤ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἢ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἦ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἡ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἥ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἣ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ἧ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ῄ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ῂ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ῇ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾐ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾔ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾒ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾖ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾑ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾕ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾓ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ᾗ # η ή ὴ ῆ ἠ ἤ ἢ ἦ ἡ ἥ ἣ ἧ ῃ ῄ ῂ ῇ ᾐ ᾔ ᾒ ᾖ ᾑ ᾕ ᾓ ᾗ eta",
  "ι # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ί # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ὶ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ῖ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἰ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἴ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἲ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἶ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἱ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἵ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἳ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ἷ # ι ί ὶ ῖ ἰ ἴ ἲ ἶ ἱ ἵ ἳ ἷ iota",
  "ο # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "οἱ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "οἳ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ό # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ὸ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ὀ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ὄ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ὂ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ὁ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ὅ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "ὃ # ο ό ὸ ὀ ὄ ὂ ὁ ὅ ὃ omicron",
  "υ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ύ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὺ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ῦ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὐ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὔ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὒ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὖ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὑ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὕ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὓ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ὗ # υ ύ ὺ ῦ ὐ ὔ ὒ ὖ ὑ ὕ ὓ ὗ upsilon",
  "ω # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ώ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὼ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ῶ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὠ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὤ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὢ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὦ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὡ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὥ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὣ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ὧ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ῴ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ῲ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ῷ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾠ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾤ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾢ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾦ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾡ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾥ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾣ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ᾧ # ω ώ ὼ ῶ ὠ ὤ ὢ ὦ ὡ ὥ ὣ ὧ ῳ ῴ ῲ ῷ ᾠ ᾤ ᾢ ᾦ ᾡ ᾥ ᾣ ᾧ omega",
  "ρ # ρ ῤ ῥ rho",
  "ῤ # ρ ῤ ῥ rho",
  "ῥ # ρ ῤ ῥ rho",
}

local M = {}

M.popup_diacritic_words = function()
  vim.cmd("normal yl")
  local cur_wrd = vim.fn.getreg('"')
  -- P(cur_wrd)
  local filtered = {}
  -- local tokens = M.get_diacritic_words()
  -- for _, entry in ipairs(tokens) do
  for _, entry in ipairs(treasure) do
    if entry:find(cur_wrd) then
      local head = vim.fn.split(entry, " #")[1]
      table.insert(filtered, head)
    end
  end
  local mappings = {
    ["<cr>"] = 'yiw:q<CR>vp',
  }
  M.floating_win(filtered, mappings)
end

M.floating_win = function(tokens, keymap)
  -- local tokens = sp_funcs.buffer_to_list()
  local longest = 0
  for _, word in pairs(tokens) do
    if #word > longest then
      longest = #word
    end
  end

  -- set up buffer for floating window
  local new_buf = vim.api.nvim_create_buf(false, true) -- create new empty buffer
  vim.api.nvim_buf_set_option(new_buf, "bufhidden", "wipe")

  -- set up buffer local mappings
  for k, v in pairs(keymap) do
    vim.api.nvim_buf_set_keymap(new_buf, "n", k, v, {
      nowait = true,
      noremap = true,
      silent = true,
    })
  end
  -- get cursor position
  local pos = vim.api.nvim_win_get_cursor(0)
  local line, col = pos[1], pos[2]
  -- calculate our floating window size
  local win_height = #tokens
  local win_width = longest + 2
  -- set some options
  local opts = {
    style = "minimal",
    relative = "editor",
    width = win_width,
    height = win_height,
    border = "single",
    -- bufpos = { line, col + 5},
    row = line,
    col = col,
  }

  -- and finally create it with buffer attached
  vim.api.nvim_open_win(new_buf, true, opts)
  vim.api.nvim_buf_set_lines(new_buf, 0, -1, false, tokens)
end

return M
