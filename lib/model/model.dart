
// To parse this JSON data, do
//
//     final characterModel = characterModelFromJson(jsonString);

import 'dart:convert';

List<CharacterModel> characterModelFromJson(String str) => List<CharacterModel>.from(json.decode(str).map((x) => CharacterModel.fromJson(x)));

String characterModelToJson(List<CharacterModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CharacterModel {
    CharacterModel({
        required this.id,
        required this.name,
        required this.alternateNames,
        required this.species,
        required this.gender,
        required this.house,
        this.dateOfBirth,
        this.yearOfBirth,
        required this.wizard,
        required this.ancestry,
        required this.eyeColour,
        required this.hairColour,
        required this.wand,
        required this.patronus,
        required this.hogwartsStudent,
        required this.hogwartsStaff,
        required this.actor,
        required this.alternateActors,
        required this.alive,
        required this.image,
    });

    String id;
    String name;
    List<String> alternateNames;
    Species species;
    Gender gender;
    House house;
    String? dateOfBirth;
    int? yearOfBirth;
    bool wizard;
    Ancestry ancestry;
    EyeColour eyeColour;
    HairColour hairColour;
    Wand wand;
    Patronus patronus;
    bool hogwartsStudent;
    bool hogwartsStaff;
    String actor;
    List<String> alternateActors;
    bool alive;
    String image;

    factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        id: json["id"],
        name: json["name"],
        alternateNames: List<String>.from(json["alternate_names"].map((x) => x)),
        species: speciesValues.map[json["species"]]!,
        gender: genderValues.map[json["gender"]]!,
        house: houseValues.map[json["house"]]!,
        dateOfBirth: json["dateOfBirth"],
        yearOfBirth: json["yearOfBirth"],
        wizard: json["wizard"],
        ancestry: ancestryValues.map[json["ancestry"]]!,
        eyeColour: eyeColourValues.map[json["eyeColour"]]!,
        hairColour: hairColourValues.map[json["hairColour"]]!,
        wand: Wand.fromJson(json["wand"]),
        patronus: patronusValues.map[json["patronus"]]!,
        hogwartsStudent: json["hogwartsStudent"],
        hogwartsStaff: json["hogwartsStaff"],
        actor: json["actor"],
        alternateActors: List<String>.from(json["alternate_actors"].map((x) => x)),
        alive: json["alive"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternate_names": List<dynamic>.from(alternateNames.map((x) => x)),
        "species": speciesValues.reverse[species],
        "gender": genderValues.reverse[gender],
        "house": houseValues.reverse[house],
        "dateOfBirth": dateOfBirth,
        "yearOfBirth": yearOfBirth,
        "wizard": wizard,
        "ancestry": ancestryValues.reverse[ancestry],
        "eyeColour": eyeColourValues.reverse[eyeColour],
        "hairColour": hairColourValues.reverse[hairColour],
        "wand": wand.toJson(),
        "patronus": patronusValues.reverse[patronus],
        "hogwartsStudent": hogwartsStudent,
        "hogwartsStaff": hogwartsStaff,
        "actor": actor,
        "alternate_actors": List<dynamic>.from(alternateActors.map((x) => x)),
        "alive": alive,
        "image": image,
    };
}

enum Ancestry { HALF_BLOOD, MUGGLEBORN, PURE_BLOOD, EMPTY, SQUIB, MUGGLE, HALF_VEELA, QUARTER_VEELA }

final ancestryValues = EnumValues({
    "": Ancestry.EMPTY,
    "half-blood": Ancestry.HALF_BLOOD,
    "half-veela": Ancestry.HALF_VEELA,
    "muggle": Ancestry.MUGGLE,
    "muggleborn": Ancestry.MUGGLEBORN,
    "pure-blood": Ancestry.PURE_BLOOD,
    "quarter-veela": Ancestry.QUARTER_VEELA,
    "squib": Ancestry.SQUIB
});

enum EyeColour { GREEN, BROWN, BLUE, GREY, EMPTY, BLACK, RED, YELLOW, PALE_SILVERY, AMBER, ORANGE, WHITE, DARK, HAZEL, YELLOWISH }

final eyeColourValues = EnumValues({
    "amber": EyeColour.AMBER,
    "black": EyeColour.BLACK,
    "blue": EyeColour.BLUE,
    "brown": EyeColour.BROWN,
    "dark": EyeColour.DARK,
    "": EyeColour.EMPTY,
    "green": EyeColour.GREEN,
    "grey": EyeColour.GREY,
    "hazel": EyeColour.HAZEL,
    "orange": EyeColour.ORANGE,
    "pale, silvery": EyeColour.PALE_SILVERY,
    "red": EyeColour.RED,
    "white": EyeColour.WHITE,
    "yellow": EyeColour.YELLOW,
    "yellowish": EyeColour.YELLOWISH
});

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({
    "female": Gender.FEMALE,
    "male": Gender.MALE
});

enum HairColour { BLACK, BROWN, RED, BLONDE, BALD, GREY, EMPTY, BLOND, SILVER, SANDY, WHITE, GINGER, DARK, TAWNY, DULL }

final hairColourValues = EnumValues({
    "bald": HairColour.BALD,
    "black": HairColour.BLACK,
    "blond": HairColour.BLOND,
    "blonde": HairColour.BLONDE,
    "brown": HairColour.BROWN,
    "dark": HairColour.DARK,
    "dull": HairColour.DULL,
    "": HairColour.EMPTY,
    "ginger": HairColour.GINGER,
    "grey": HairColour.GREY,
    "red": HairColour.RED,
    "sandy": HairColour.SANDY,
    "silver": HairColour.SILVER,
    "tawny": HairColour.TAWNY,
    "white": HairColour.WHITE
});

enum House { GRYFFINDOR, SLYTHERIN, HUFFLEPUFF, RAVENCLAW, EMPTY }

final houseValues = EnumValues({
    "": House.EMPTY,
    "Gryffindor": House.GRYFFINDOR,
    "Hufflepuff": House.HUFFLEPUFF,
    "Ravenclaw": House.RAVENCLAW,
    "Slytherin": House.SLYTHERIN
});

enum Patronus { STAG, OTTER, JACK_RUSSELL_TERRIER, EMPTY, TABBY_CAT, SWAN, DOE, NON_CORPOREAL, HARE, HORSE, WOLF, WEASEL, LYNX, PERSIAN_CAT, BOAR, GOAT }

final patronusValues = EnumValues({
    "boar": Patronus.BOAR,
    "doe": Patronus.DOE,
    "": Patronus.EMPTY,
    "goat": Patronus.GOAT,
    "hare": Patronus.HARE,
    "horse": Patronus.HORSE,
    "Jack Russell terrier": Patronus.JACK_RUSSELL_TERRIER,
    "lynx": Patronus.LYNX,
    "Non-Corporeal": Patronus.NON_CORPOREAL,
    "otter": Patronus.OTTER,
    "persian cat": Patronus.PERSIAN_CAT,
    "stag": Patronus.STAG,
    "swan": Patronus.SWAN,
    "tabby cat": Patronus.TABBY_CAT,
    "weasel": Patronus.WEASEL,
    "wolf": Patronus.WOLF
});

enum Species { HUMAN, HALF_GIANT, WEREWOLF, CAT, GOBLIN, OWL, GHOST, POLTERGEIST, THREE_HEADED_DOG, DRAGON, CENTAUR, HOUSE_ELF, ACROMANTULA, HIPPOGRIFF, GIANT, VAMPIRE, HALF_HUMAN }

final speciesValues = EnumValues({
    "acromantula": Species.ACROMANTULA,
    "cat": Species.CAT,
    "centaur": Species.CENTAUR,
    "dragon": Species.DRAGON,
    "ghost": Species.GHOST,
    "giant": Species.GIANT,
    "goblin": Species.GOBLIN,
    "half-giant": Species.HALF_GIANT,
    "half-human": Species.HALF_HUMAN,
    "hippogriff": Species.HIPPOGRIFF,
    "house-elf": Species.HOUSE_ELF,
    "human": Species.HUMAN,
    "owl": Species.OWL,
    "poltergeist": Species.POLTERGEIST,
    "three-headed dog": Species.THREE_HEADED_DOG,
    "vampire": Species.VAMPIRE,
    "werewolf": Species.WEREWOLF
});

class Wand {
    Wand({
        required this.wood,
        required this.core,
        this.length,
    });

    Wood wood;
    Core core;
    double? length;

    factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        wood: woodValues.map[json["wood"]]!,
        core: coreValues.map[json["core"]]!,
        length: json["length"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "wood": woodValues.reverse[wood],
        "core": coreValues.reverse[core],
        "length": length,
    };
}

enum Core { PHOENIX_FEATHER, DRAGON_HEARTSTRING, UNICORN_TAIL_HAIR, UNICORN_HAIR, EMPTY }

final coreValues = EnumValues({
    "dragon heartstring": Core.DRAGON_HEARTSTRING,
    "": Core.EMPTY,
    "phoenix feather": Core.PHOENIX_FEATHER,
    "unicorn hair": Core.UNICORN_HAIR,
    "unicorn tail-hair": Core.UNICORN_TAIL_HAIR
});

enum Wood { HOLLY, VINE, WILLOW, HAWTHORN, FIR, ASH, EMPTY, OAK, CHERRY, YEW, CYPRESS, WALNUT, CEDAR, BIRCH, ELM, MAHOGANY, LARCH, CHESTNUT, HORNBEAM }

final woodValues = EnumValues({
    "ash": Wood.ASH,
    "birch": Wood.BIRCH,
    "cedar": Wood.CEDAR,
    "cherry": Wood.CHERRY,
    "chestnut": Wood.CHESTNUT,
    "cypress": Wood.CYPRESS,
    "elm": Wood.ELM,
    "": Wood.EMPTY,
    "fir": Wood.FIR,
    "hawthorn": Wood.HAWTHORN,
    "holly": Wood.HOLLY,
    "hornbeam": Wood.HORNBEAM,
    "larch": Wood.LARCH,
    "mahogany": Wood.MAHOGANY,
    "oak": Wood.OAK,
    "vine": Wood.VINE,
    "walnut": Wood.WALNUT,
    "willow": Wood.WILLOW,
    "yew": Wood.YEW
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
