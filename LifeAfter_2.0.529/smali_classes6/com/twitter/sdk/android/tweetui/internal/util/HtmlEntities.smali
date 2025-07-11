.class public Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.super Ljava/lang/Object;
.source "HtmlEntities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;,
        Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;,
        Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;,
        Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;
    }
.end annotation


# static fields
.field private static final BASIC_ARRAY:[[Ljava/lang/String;

.field public static final HTML40:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;

.field static final HTML40_ARRAY:[[Ljava/lang/String;

.field static final ISO8859_1_ARRAY:[[Ljava/lang/String;


# instance fields
.field final map:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x60

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "nbsp"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    const-string v6, "160"

    aput-object v6, v3, v5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "iexcl"

    aput-object v6, v3, v4

    const-string v6, "161"

    aput-object v6, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "cent"

    aput-object v6, v3, v4

    const-string v6, "162"

    aput-object v6, v3, v5

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "pound"

    aput-object v6, v3, v4

    const-string v6, "163"

    aput-object v6, v3, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v7, "curren"

    aput-object v7, v3, v4

    const-string v7, "164"

    aput-object v7, v3, v5

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "yen"

    aput-object v8, v3, v4

    const-string v8, "165"

    aput-object v8, v3, v5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "brvbar"

    aput-object v9, v3, v4

    const-string v9, "166"

    aput-object v9, v3, v5

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "sect"

    aput-object v10, v3, v4

    const-string v10, "167"

    aput-object v10, v3, v5

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v11, "uml"

    aput-object v11, v3, v4

    const-string v11, "168"

    aput-object v11, v3, v5

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [Ljava/lang/String;

    const-string v12, "copy"

    aput-object v12, v3, v4

    const-string v12, "169"

    aput-object v12, v3, v5

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [Ljava/lang/String;

    const-string v13, "ordf"

    aput-object v13, v3, v4

    const-string v13, "170"

    aput-object v13, v3, v5

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/String;

    const-string v14, "laquo"

    aput-object v14, v3, v4

    const-string v14, "171"

    aput-object v14, v3, v5

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/String;

    const-string v15, "not"

    aput-object v15, v3, v4

    const-string v15, "172"

    aput-object v15, v3, v5

    const/16 v15, 0xc

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/String;

    const-string v16, "shy"

    aput-object v16, v3, v4

    const-string v16, "173"

    aput-object v16, v3, v5

    const/16 v16, 0xd

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "reg"

    aput-object v17, v3, v4

    const-string v17, "174"

    aput-object v17, v3, v5

    const/16 v17, 0xe

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "macr"

    aput-object v17, v3, v4

    const-string v17, "175"

    aput-object v17, v3, v5

    const/16 v17, 0xf

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "deg"

    aput-object v17, v3, v4

    const-string v17, "176"

    aput-object v17, v3, v5

    const/16 v17, 0x10

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "plusmn"

    aput-object v17, v3, v4

    const-string v17, "177"

    aput-object v17, v3, v5

    const/16 v17, 0x11

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "sup2"

    aput-object v17, v3, v4

    const-string v17, "178"

    aput-object v17, v3, v5

    const/16 v17, 0x12

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "sup3"

    aput-object v17, v3, v4

    const-string v17, "179"

    aput-object v17, v3, v5

    const/16 v17, 0x13

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "acute"

    aput-object v17, v3, v4

    const-string v17, "180"

    aput-object v17, v3, v5

    const/16 v17, 0x14

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "micro"

    aput-object v17, v3, v4

    const-string v17, "181"

    aput-object v17, v3, v5

    const/16 v17, 0x15

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "para"

    aput-object v17, v3, v4

    const-string v17, "182"

    aput-object v17, v3, v5

    const/16 v17, 0x16

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "middot"

    aput-object v17, v3, v4

    const-string v17, "183"

    aput-object v17, v3, v5

    const/16 v17, 0x17

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "cedil"

    aput-object v17, v3, v4

    const-string v17, "184"

    aput-object v17, v3, v5

    const/16 v17, 0x18

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "sup1"

    aput-object v17, v3, v4

    const-string v17, "185"

    aput-object v17, v3, v5

    const/16 v17, 0x19

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ordm"

    aput-object v17, v3, v4

    const-string v17, "186"

    aput-object v17, v3, v5

    const/16 v17, 0x1a

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "raquo"

    aput-object v17, v3, v4

    const-string v17, "187"

    aput-object v17, v3, v5

    const/16 v17, 0x1b

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "frac14"

    aput-object v17, v3, v4

    const-string v17, "188"

    aput-object v17, v3, v5

    const/16 v17, 0x1c

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "frac12"

    aput-object v17, v3, v4

    const-string v17, "189"

    aput-object v17, v3, v5

    const/16 v17, 0x1d

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "frac34"

    aput-object v17, v3, v4

    const-string v17, "190"

    aput-object v17, v3, v5

    const/16 v17, 0x1e

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "iquest"

    aput-object v17, v3, v4

    const-string v17, "191"

    aput-object v17, v3, v5

    const/16 v17, 0x1f

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Agrave"

    aput-object v17, v3, v4

    const-string v17, "192"

    aput-object v17, v3, v5

    const/16 v17, 0x20

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Aacute"

    aput-object v17, v3, v4

    const-string v17, "193"

    aput-object v17, v3, v5

    const/16 v17, 0x21

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Acirc"

    aput-object v17, v3, v4

    const-string v17, "194"

    aput-object v17, v3, v5

    const/16 v17, 0x22

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Atilde"

    aput-object v17, v3, v4

    const-string v17, "195"

    aput-object v17, v3, v5

    const/16 v17, 0x23

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Auml"

    aput-object v17, v3, v4

    const-string v17, "196"

    aput-object v17, v3, v5

    const/16 v17, 0x24

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Aring"

    aput-object v17, v3, v4

    const-string v17, "197"

    aput-object v17, v3, v5

    const/16 v17, 0x25

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "AElig"

    aput-object v17, v3, v4

    const-string v17, "198"

    aput-object v17, v3, v5

    const/16 v17, 0x26

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ccedil"

    aput-object v17, v3, v4

    const-string v17, "199"

    aput-object v17, v3, v5

    const/16 v17, 0x27

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Egrave"

    aput-object v17, v3, v4

    const-string v17, "200"

    aput-object v17, v3, v5

    const/16 v17, 0x28

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Eacute"

    aput-object v17, v3, v4

    const-string v17, "201"

    aput-object v17, v3, v5

    const/16 v17, 0x29

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ecirc"

    aput-object v17, v3, v4

    const-string v17, "202"

    aput-object v17, v3, v5

    const/16 v17, 0x2a

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Euml"

    aput-object v17, v3, v4

    const-string v17, "203"

    aput-object v17, v3, v5

    const/16 v17, 0x2b

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Igrave"

    aput-object v17, v3, v4

    const-string v17, "204"

    aput-object v17, v3, v5

    const/16 v17, 0x2c

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Iacute"

    aput-object v17, v3, v4

    const-string v17, "205"

    aput-object v17, v3, v5

    const/16 v17, 0x2d

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Icirc"

    aput-object v17, v3, v4

    const-string v17, "206"

    aput-object v17, v3, v5

    const/16 v17, 0x2e

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Iuml"

    aput-object v17, v3, v4

    const-string v17, "207"

    aput-object v17, v3, v5

    const/16 v17, 0x2f

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ETH"

    aput-object v17, v3, v4

    const-string v17, "208"

    aput-object v17, v3, v5

    const/16 v17, 0x30

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ntilde"

    aput-object v17, v3, v4

    const-string v17, "209"

    aput-object v17, v3, v5

    const/16 v17, 0x31

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ograve"

    aput-object v17, v3, v4

    const-string v17, "210"

    aput-object v17, v3, v5

    const/16 v17, 0x32

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Oacute"

    aput-object v17, v3, v4

    const-string v17, "211"

    aput-object v17, v3, v5

    const/16 v17, 0x33

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ocirc"

    aput-object v17, v3, v4

    const-string v17, "212"

    aput-object v17, v3, v5

    const/16 v17, 0x34

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Otilde"

    aput-object v17, v3, v4

    const-string v17, "213"

    aput-object v17, v3, v5

    const/16 v17, 0x35

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ouml"

    aput-object v17, v3, v4

    const-string v17, "214"

    aput-object v17, v3, v5

    const/16 v17, 0x36

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "times"

    aput-object v17, v3, v4

    const-string v17, "215"

    aput-object v17, v3, v5

    const/16 v17, 0x37

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Oslash"

    aput-object v17, v3, v4

    const-string v17, "216"

    aput-object v17, v3, v5

    const/16 v17, 0x38

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ugrave"

    aput-object v17, v3, v4

    const-string v17, "217"

    aput-object v17, v3, v5

    const/16 v17, 0x39

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Uacute"

    aput-object v17, v3, v4

    const-string v17, "218"

    aput-object v17, v3, v5

    const/16 v17, 0x3a

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Ucirc"

    aput-object v17, v3, v4

    const-string v17, "219"

    aput-object v17, v3, v5

    const/16 v17, 0x3b

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Uuml"

    aput-object v17, v3, v4

    const-string v17, "220"

    aput-object v17, v3, v5

    const/16 v17, 0x3c

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Yacute"

    aput-object v17, v3, v4

    const-string v17, "221"

    aput-object v17, v3, v5

    const/16 v17, 0x3d

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "THORN"

    aput-object v17, v3, v4

    const-string v17, "222"

    aput-object v17, v3, v5

    const/16 v17, 0x3e

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "szlig"

    aput-object v17, v3, v4

    const-string v17, "223"

    aput-object v17, v3, v5

    const/16 v17, 0x3f

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "agrave"

    aput-object v17, v3, v4

    const-string v17, "224"

    aput-object v17, v3, v5

    const/16 v17, 0x40

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "aacute"

    aput-object v17, v3, v4

    const-string v17, "225"

    aput-object v17, v3, v5

    const/16 v17, 0x41

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "acirc"

    aput-object v17, v3, v4

    const-string v17, "226"

    aput-object v17, v3, v5

    const/16 v17, 0x42

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "atilde"

    aput-object v17, v3, v4

    const-string v17, "227"

    aput-object v17, v3, v5

    const/16 v17, 0x43

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "auml"

    aput-object v17, v3, v4

    const-string v17, "228"

    aput-object v17, v3, v5

    const/16 v17, 0x44

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "aring"

    aput-object v17, v3, v4

    const-string v17, "229"

    aput-object v17, v3, v5

    const/16 v17, 0x45

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "aelig"

    aput-object v17, v3, v4

    const-string v17, "230"

    aput-object v17, v3, v5

    const/16 v17, 0x46

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ccedil"

    aput-object v17, v3, v4

    const-string v17, "231"

    aput-object v17, v3, v5

    const/16 v17, 0x47

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "egrave"

    aput-object v17, v3, v4

    const-string v17, "232"

    aput-object v17, v3, v5

    const/16 v17, 0x48

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "eacute"

    aput-object v17, v3, v4

    const-string v17, "233"

    aput-object v17, v3, v5

    const/16 v17, 0x49

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ecirc"

    aput-object v17, v3, v4

    const-string v17, "234"

    aput-object v17, v3, v5

    const/16 v17, 0x4a

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "euml"

    aput-object v17, v3, v4

    const-string v17, "235"

    aput-object v17, v3, v5

    const/16 v17, 0x4b

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "igrave"

    aput-object v17, v3, v4

    const-string v17, "236"

    aput-object v17, v3, v5

    const/16 v17, 0x4c

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "iacute"

    aput-object v17, v3, v4

    const-string v17, "237"

    aput-object v17, v3, v5

    const/16 v17, 0x4d

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "icirc"

    aput-object v17, v3, v4

    const-string v17, "238"

    aput-object v17, v3, v5

    const/16 v17, 0x4e

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "iuml"

    aput-object v17, v3, v4

    const-string v17, "239"

    aput-object v17, v3, v5

    const/16 v17, 0x4f

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "eth"

    aput-object v17, v3, v4

    const-string v17, "240"

    aput-object v17, v3, v5

    const/16 v17, 0x50

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ntilde"

    aput-object v17, v3, v4

    const-string v17, "241"

    aput-object v17, v3, v5

    const/16 v17, 0x51

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ograve"

    aput-object v17, v3, v4

    const-string v17, "242"

    aput-object v17, v3, v5

    const/16 v17, 0x52

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "oacute"

    aput-object v17, v3, v4

    const-string v17, "243"

    aput-object v17, v3, v5

    const/16 v17, 0x53

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ocirc"

    aput-object v17, v3, v4

    const-string v17, "244"

    aput-object v17, v3, v5

    const/16 v17, 0x54

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "otilde"

    aput-object v17, v3, v4

    const-string v17, "245"

    aput-object v17, v3, v5

    const/16 v17, 0x55

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ouml"

    aput-object v17, v3, v4

    const-string v17, "246"

    aput-object v17, v3, v5

    const/16 v17, 0x56

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "divide"

    aput-object v17, v3, v4

    const-string v17, "247"

    aput-object v17, v3, v5

    const/16 v17, 0x57

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "oslash"

    aput-object v17, v3, v4

    const-string v17, "248"

    aput-object v17, v3, v5

    const/16 v17, 0x58

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ugrave"

    aput-object v17, v3, v4

    const-string v17, "249"

    aput-object v17, v3, v5

    const/16 v17, 0x59

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "uacute"

    aput-object v17, v3, v4

    const-string v17, "250"

    aput-object v17, v3, v5

    const/16 v17, 0x5a

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "ucirc"

    aput-object v17, v3, v4

    const-string v17, "251"

    aput-object v17, v3, v5

    const/16 v17, 0x5b

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "uuml"

    aput-object v17, v3, v4

    const-string v17, "252"

    aput-object v17, v3, v5

    const/16 v17, 0x5c

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "yacute"

    aput-object v17, v3, v4

    const-string v17, "253"

    aput-object v17, v3, v5

    const/16 v17, 0x5d

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "thorn"

    aput-object v17, v3, v4

    const-string v17, "254"

    aput-object v17, v3, v5

    const/16 v17, 0x5e

    aput-object v3, v1, v17

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "yuml"

    aput-object v17, v3, v4

    const-string v17, "255"

    aput-object v17, v3, v5

    const/16 v17, 0x5f

    aput-object v3, v1, v17

    .line 58
    sput-object v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    const/16 v1, 0x97

    new-array v1, v1, [[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "fnof"

    aput-object v17, v3, v4

    const-string v17, "402"

    aput-object v17, v3, v5

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Alpha"

    aput-object v17, v3, v4

    const-string v17, "913"

    aput-object v17, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Beta"

    aput-object v17, v3, v4

    const-string v17, "914"

    aput-object v17, v3, v5

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Gamma"

    aput-object v17, v3, v4

    const-string v17, "915"

    aput-object v17, v3, v5

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Delta"

    aput-object v17, v3, v4

    const-string v17, "916"

    aput-object v17, v3, v5

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/String;

    const-string v17, "Epsilon"

    aput-object v17, v3, v4

    const-string v17, "917"

    aput-object v17, v3, v5

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Zeta"

    aput-object v8, v3, v4

    const-string v8, "918"

    aput-object v8, v3, v5

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Eta"

    aput-object v8, v3, v4

    const-string v8, "919"

    aput-object v8, v3, v5

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Theta"

    aput-object v8, v3, v4

    const-string v8, "920"

    aput-object v8, v3, v5

    aput-object v3, v1, v11

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Iota"

    aput-object v8, v3, v4

    const-string v8, "921"

    aput-object v8, v3, v5

    aput-object v3, v1, v12

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Kappa"

    aput-object v8, v3, v4

    const-string v8, "922"

    aput-object v8, v3, v5

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Lambda"

    aput-object v8, v3, v4

    const-string v8, "923"

    aput-object v8, v3, v5

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Mu"

    aput-object v8, v3, v4

    const-string v8, "924"

    aput-object v8, v3, v5

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Nu"

    aput-object v8, v3, v4

    const-string v8, "925"

    aput-object v8, v3, v5

    aput-object v3, v1, v16

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Xi"

    aput-object v8, v3, v4

    const-string v8, "926"

    aput-object v8, v3, v5

    const/16 v8, 0xe

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Omicron"

    aput-object v8, v3, v4

    const-string v8, "927"

    aput-object v8, v3, v5

    const/16 v8, 0xf

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Pi"

    aput-object v8, v3, v4

    const-string v8, "928"

    aput-object v8, v3, v5

    const/16 v8, 0x10

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Rho"

    aput-object v8, v3, v4

    const-string v8, "929"

    aput-object v8, v3, v5

    const/16 v8, 0x11

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Sigma"

    aput-object v8, v3, v4

    const-string v8, "931"

    aput-object v8, v3, v5

    const/16 v8, 0x12

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Tau"

    aput-object v8, v3, v4

    const-string v8, "932"

    aput-object v8, v3, v5

    const/16 v8, 0x13

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Upsilon"

    aput-object v8, v3, v4

    const-string v8, "933"

    aput-object v8, v3, v5

    const/16 v8, 0x14

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Phi"

    aput-object v8, v3, v4

    const-string v8, "934"

    aput-object v8, v3, v5

    const/16 v8, 0x15

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Chi"

    aput-object v8, v3, v4

    const-string v8, "935"

    aput-object v8, v3, v5

    const/16 v8, 0x16

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Psi"

    aput-object v8, v3, v4

    const-string v8, "936"

    aput-object v8, v3, v5

    const/16 v8, 0x17

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Omega"

    aput-object v8, v3, v4

    const-string v8, "937"

    aput-object v8, v3, v5

    const/16 v8, 0x18

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "alpha"

    aput-object v8, v3, v4

    const-string v8, "945"

    aput-object v8, v3, v5

    const/16 v8, 0x19

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "beta"

    aput-object v8, v3, v4

    const-string v8, "946"

    aput-object v8, v3, v5

    const/16 v8, 0x1a

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "gamma"

    aput-object v8, v3, v4

    const-string v8, "947"

    aput-object v8, v3, v5

    const/16 v8, 0x1b

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "delta"

    aput-object v8, v3, v4

    const-string v8, "948"

    aput-object v8, v3, v5

    const/16 v8, 0x1c

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "epsilon"

    aput-object v8, v3, v4

    const-string v8, "949"

    aput-object v8, v3, v5

    const/16 v8, 0x1d

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "zeta"

    aput-object v8, v3, v4

    const-string v8, "950"

    aput-object v8, v3, v5

    const/16 v8, 0x1e

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "eta"

    aput-object v8, v3, v4

    const-string v8, "951"

    aput-object v8, v3, v5

    const/16 v8, 0x1f

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "theta"

    aput-object v8, v3, v4

    const-string v8, "952"

    aput-object v8, v3, v5

    const/16 v8, 0x20

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "iota"

    aput-object v8, v3, v4

    const-string v8, "953"

    aput-object v8, v3, v5

    const/16 v8, 0x21

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "kappa"

    aput-object v8, v3, v4

    const-string v8, "954"

    aput-object v8, v3, v5

    const/16 v8, 0x22

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "lambda"

    aput-object v8, v3, v4

    const-string v8, "955"

    aput-object v8, v3, v5

    const/16 v8, 0x23

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "mu"

    aput-object v8, v3, v4

    const-string v8, "956"

    aput-object v8, v3, v5

    const/16 v8, 0x24

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "nu"

    aput-object v8, v3, v4

    const-string v8, "957"

    aput-object v8, v3, v5

    const/16 v8, 0x25

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "xi"

    aput-object v8, v3, v4

    const-string v8, "958"

    aput-object v8, v3, v5

    const/16 v8, 0x26

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "omicron"

    aput-object v8, v3, v4

    const-string v8, "959"

    aput-object v8, v3, v5

    const/16 v8, 0x27

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "pi"

    aput-object v8, v3, v4

    const-string v8, "960"

    aput-object v8, v3, v5

    const/16 v8, 0x28

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "rho"

    aput-object v8, v3, v4

    const-string v8, "961"

    aput-object v8, v3, v5

    const/16 v8, 0x29

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "sigmaf"

    aput-object v8, v3, v4

    const-string v8, "962"

    aput-object v8, v3, v5

    const/16 v8, 0x2a

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "sigma"

    aput-object v8, v3, v4

    const-string v8, "963"

    aput-object v8, v3, v5

    const/16 v8, 0x2b

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "tau"

    aput-object v8, v3, v4

    const-string v8, "964"

    aput-object v8, v3, v5

    const/16 v8, 0x2c

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "upsilon"

    aput-object v8, v3, v4

    const-string v8, "965"

    aput-object v8, v3, v5

    const/16 v8, 0x2d

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "phi"

    aput-object v8, v3, v4

    const-string v8, "966"

    aput-object v8, v3, v5

    const/16 v8, 0x2e

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "chi"

    aput-object v8, v3, v4

    const-string v8, "967"

    aput-object v8, v3, v5

    const/16 v8, 0x2f

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "psi"

    aput-object v8, v3, v4

    const-string v8, "968"

    aput-object v8, v3, v5

    const/16 v8, 0x30

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "omega"

    aput-object v8, v3, v4

    const-string v8, "969"

    aput-object v8, v3, v5

    const/16 v8, 0x31

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "thetasym"

    aput-object v8, v3, v4

    const-string v8, "977"

    aput-object v8, v3, v5

    const/16 v8, 0x32

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "upsih"

    aput-object v8, v3, v4

    const-string v8, "978"

    aput-object v8, v3, v5

    const/16 v8, 0x33

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "piv"

    aput-object v8, v3, v4

    const-string v8, "982"

    aput-object v8, v3, v5

    const/16 v8, 0x34

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "bull"

    aput-object v8, v3, v4

    const-string v8, "8226"

    aput-object v8, v3, v5

    const/16 v8, 0x35

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "hellip"

    aput-object v8, v3, v4

    const-string v8, "8230"

    aput-object v8, v3, v5

    const/16 v8, 0x36

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "prime"

    aput-object v8, v3, v4

    const-string v8, "8242"

    aput-object v8, v3, v5

    const/16 v8, 0x37

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "Prime"

    aput-object v8, v3, v4

    const-string v8, "8243"

    aput-object v8, v3, v5

    const/16 v8, 0x38

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "oline"

    aput-object v8, v3, v4

    const-string v8, "8254"

    aput-object v8, v3, v5

    const/16 v8, 0x39

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "frasl"

    aput-object v8, v3, v4

    const-string v8, "8260"

    aput-object v8, v3, v5

    const/16 v8, 0x3a

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "weierp"

    aput-object v8, v3, v4

    const-string v8, "8472"

    aput-object v8, v3, v5

    const/16 v8, 0x3b

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "image"

    aput-object v8, v3, v4

    const-string v8, "8465"

    aput-object v8, v3, v5

    const/16 v8, 0x3c

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "real"

    aput-object v8, v3, v4

    const-string v8, "8476"

    aput-object v8, v3, v5

    const/16 v8, 0x3d

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "trade"

    aput-object v8, v3, v4

    const-string v8, "8482"

    aput-object v8, v3, v5

    const/16 v8, 0x3e

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "alefsym"

    aput-object v8, v3, v4

    const-string v8, "8501"

    aput-object v8, v3, v5

    const/16 v8, 0x3f

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "larr"

    aput-object v8, v3, v4

    const-string v8, "8592"

    aput-object v8, v3, v5

    const/16 v8, 0x40

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "uarr"

    aput-object v8, v3, v4

    const-string v8, "8593"

    aput-object v8, v3, v5

    const/16 v8, 0x41

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "rarr"

    aput-object v8, v3, v4

    const-string v8, "8594"

    aput-object v8, v3, v5

    const/16 v8, 0x42

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "darr"

    aput-object v8, v3, v4

    const-string v8, "8595"

    aput-object v8, v3, v5

    const/16 v8, 0x43

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "harr"

    aput-object v8, v3, v4

    const-string v8, "8596"

    aput-object v8, v3, v5

    const/16 v8, 0x44

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "crarr"

    aput-object v8, v3, v4

    const-string v8, "8629"

    aput-object v8, v3, v5

    const/16 v8, 0x45

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "lArr"

    aput-object v8, v3, v4

    const-string v8, "8656"

    aput-object v8, v3, v5

    const/16 v8, 0x46

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "uArr"

    aput-object v8, v3, v4

    const-string v8, "8657"

    aput-object v8, v3, v5

    const/16 v8, 0x47

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "rArr"

    aput-object v8, v3, v4

    const-string v8, "8658"

    aput-object v8, v3, v5

    const/16 v8, 0x48

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "dArr"

    aput-object v8, v3, v4

    const-string v8, "8659"

    aput-object v8, v3, v5

    const/16 v8, 0x49

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "hArr"

    aput-object v8, v3, v4

    const-string v8, "8660"

    aput-object v8, v3, v5

    const/16 v8, 0x4a

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "forall"

    aput-object v8, v3, v4

    const-string v8, "8704"

    aput-object v8, v3, v5

    const/16 v8, 0x4b

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "part"

    aput-object v8, v3, v4

    const-string v8, "8706"

    aput-object v8, v3, v5

    const/16 v8, 0x4c

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "exist"

    aput-object v8, v3, v4

    const-string v8, "8707"

    aput-object v8, v3, v5

    const/16 v8, 0x4d

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "empty"

    aput-object v8, v3, v4

    const-string v8, "8709"

    aput-object v8, v3, v5

    const/16 v8, 0x4e

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "nabla"

    aput-object v8, v3, v4

    const-string v8, "8711"

    aput-object v8, v3, v5

    const/16 v8, 0x4f

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "isin"

    aput-object v8, v3, v4

    const-string v8, "8712"

    aput-object v8, v3, v5

    const/16 v8, 0x50

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "notin"

    aput-object v8, v3, v4

    const-string v8, "8713"

    aput-object v8, v3, v5

    const/16 v8, 0x51

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "ni"

    aput-object v8, v3, v4

    const-string v8, "8715"

    aput-object v8, v3, v5

    const/16 v8, 0x52

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "prod"

    aput-object v8, v3, v4

    const-string v8, "8719"

    aput-object v8, v3, v5

    const/16 v8, 0x53

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "sum"

    aput-object v8, v3, v4

    const-string v8, "8721"

    aput-object v8, v3, v5

    const/16 v8, 0x54

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "minus"

    aput-object v8, v3, v4

    const-string v8, "8722"

    aput-object v8, v3, v5

    const/16 v8, 0x55

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "lowast"

    aput-object v8, v3, v4

    const-string v8, "8727"

    aput-object v8, v3, v5

    const/16 v8, 0x56

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "radic"

    aput-object v8, v3, v4

    const-string v8, "8730"

    aput-object v8, v3, v5

    const/16 v8, 0x57

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "prop"

    aput-object v8, v3, v4

    const-string v8, "8733"

    aput-object v8, v3, v5

    const/16 v8, 0x58

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "infin"

    aput-object v8, v3, v4

    const-string v8, "8734"

    aput-object v8, v3, v5

    const/16 v8, 0x59

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "ang"

    aput-object v8, v3, v4

    const-string v8, "8736"

    aput-object v8, v3, v5

    const/16 v8, 0x5a

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "and"

    aput-object v8, v3, v4

    const-string v8, "8743"

    aput-object v8, v3, v5

    const/16 v8, 0x5b

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "or"

    aput-object v8, v3, v4

    const-string v8, "8744"

    aput-object v8, v3, v5

    const/16 v8, 0x5c

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "cap"

    aput-object v8, v3, v4

    const-string v8, "8745"

    aput-object v8, v3, v5

    const/16 v8, 0x5d

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "cup"

    aput-object v8, v3, v4

    const-string v8, "8746"

    aput-object v8, v3, v5

    const/16 v8, 0x5e

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "int"

    aput-object v8, v3, v4

    const-string v8, "8747"

    aput-object v8, v3, v5

    const/16 v8, 0x5f

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "there4"

    aput-object v8, v3, v4

    const-string v8, "8756"

    aput-object v8, v3, v5

    aput-object v3, v1, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "sim"

    aput-object v3, v0, v4

    const-string v3, "8764"

    aput-object v3, v0, v5

    const/16 v3, 0x61

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "cong"

    aput-object v3, v0, v4

    const-string v3, "8773"

    aput-object v3, v0, v5

    const/16 v3, 0x62

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "asymp"

    aput-object v3, v0, v4

    const-string v3, "8776"

    aput-object v3, v0, v5

    const/16 v3, 0x63

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "ne"

    aput-object v3, v0, v4

    const-string v3, "8800"

    aput-object v3, v0, v5

    const/16 v3, 0x64

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "equiv"

    aput-object v3, v0, v4

    const-string v3, "8801"

    aput-object v3, v0, v5

    const/16 v3, 0x65

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "le"

    aput-object v3, v0, v4

    const-string v3, "8804"

    aput-object v3, v0, v5

    const/16 v3, 0x66

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "ge"

    aput-object v3, v0, v4

    const-string v3, "8805"

    aput-object v3, v0, v5

    const/16 v3, 0x67

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "sub"

    aput-object v3, v0, v4

    const-string v3, "8834"

    aput-object v3, v0, v5

    const/16 v3, 0x68

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "sup"

    aput-object v3, v0, v4

    const-string v3, "8835"

    aput-object v3, v0, v5

    const/16 v3, 0x69

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "sube"

    aput-object v3, v0, v4

    const-string v3, "8838"

    aput-object v3, v0, v5

    const/16 v3, 0x6a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "supe"

    aput-object v3, v0, v4

    const-string v3, "8839"

    aput-object v3, v0, v5

    const/16 v3, 0x6b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "oplus"

    aput-object v3, v0, v4

    const-string v3, "8853"

    aput-object v3, v0, v5

    const/16 v3, 0x6c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "otimes"

    aput-object v3, v0, v4

    const-string v3, "8855"

    aput-object v3, v0, v5

    const/16 v3, 0x6d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "perp"

    aput-object v3, v0, v4

    const-string v3, "8869"

    aput-object v3, v0, v5

    const/16 v3, 0x6e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "sdot"

    aput-object v3, v0, v4

    const-string v3, "8901"

    aput-object v3, v0, v5

    const/16 v3, 0x6f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "lceil"

    aput-object v3, v0, v4

    const-string v3, "8968"

    aput-object v3, v0, v5

    const/16 v3, 0x70

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "rceil"

    aput-object v3, v0, v4

    const-string v3, "8969"

    aput-object v3, v0, v5

    const/16 v3, 0x71

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "lfloor"

    aput-object v3, v0, v4

    const-string v3, "8970"

    aput-object v3, v0, v5

    const/16 v3, 0x72

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "rfloor"

    aput-object v3, v0, v4

    const-string v3, "8971"

    aput-object v3, v0, v5

    const/16 v3, 0x73

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "lang"

    aput-object v3, v0, v4

    const-string v3, "9001"

    aput-object v3, v0, v5

    const/16 v3, 0x74

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "rang"

    aput-object v3, v0, v4

    const-string v3, "9002"

    aput-object v3, v0, v5

    const/16 v3, 0x75

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "loz"

    aput-object v3, v0, v4

    const-string v3, "9674"

    aput-object v3, v0, v5

    const/16 v3, 0x76

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "spades"

    aput-object v3, v0, v4

    const-string v3, "9824"

    aput-object v3, v0, v5

    const/16 v3, 0x77

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "clubs"

    aput-object v3, v0, v4

    const-string v3, "9827"

    aput-object v3, v0, v5

    const/16 v3, 0x78

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "hearts"

    aput-object v3, v0, v4

    const-string v3, "9829"

    aput-object v3, v0, v5

    const/16 v3, 0x79

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "diams"

    aput-object v3, v0, v4

    const-string v3, "9830"

    aput-object v3, v0, v5

    const/16 v3, 0x7a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "OElig"

    aput-object v3, v0, v4

    const-string v3, "338"

    aput-object v3, v0, v5

    const/16 v3, 0x7b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "oelig"

    aput-object v3, v0, v4

    const-string v3, "339"

    aput-object v3, v0, v5

    const/16 v3, 0x7c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "Scaron"

    aput-object v3, v0, v4

    const-string v3, "352"

    aput-object v3, v0, v5

    const/16 v3, 0x7d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "scaron"

    aput-object v3, v0, v4

    const-string v3, "353"

    aput-object v3, v0, v5

    const/16 v3, 0x7e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "Yuml"

    aput-object v3, v0, v4

    const-string v3, "376"

    aput-object v3, v0, v5

    const/16 v3, 0x7f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "circ"

    aput-object v3, v0, v4

    const-string v3, "710"

    aput-object v3, v0, v5

    const/16 v3, 0x80

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "tilde"

    aput-object v3, v0, v4

    const-string v3, "732"

    aput-object v3, v0, v5

    const/16 v3, 0x81

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "ensp"

    aput-object v3, v0, v4

    const-string v3, "8194"

    aput-object v3, v0, v5

    const/16 v3, 0x82

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "emsp"

    aput-object v3, v0, v4

    const-string v3, "8195"

    aput-object v3, v0, v5

    const/16 v3, 0x83

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "thinsp"

    aput-object v3, v0, v4

    const-string v3, "8201"

    aput-object v3, v0, v5

    const/16 v3, 0x84

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "zwnj"

    aput-object v3, v0, v4

    const-string v3, "8204"

    aput-object v3, v0, v5

    const/16 v3, 0x85

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "zwj"

    aput-object v3, v0, v4

    const-string v3, "8205"

    aput-object v3, v0, v5

    const/16 v3, 0x86

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "lrm"

    aput-object v3, v0, v4

    const-string v3, "8206"

    aput-object v3, v0, v5

    const/16 v3, 0x87

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "rlm"

    aput-object v3, v0, v4

    const-string v3, "8207"

    aput-object v3, v0, v5

    const/16 v3, 0x88

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "ndash"

    aput-object v3, v0, v4

    const-string v3, "8211"

    aput-object v3, v0, v5

    const/16 v3, 0x89

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "mdash"

    aput-object v3, v0, v4

    const-string v3, "8212"

    aput-object v3, v0, v5

    const/16 v3, 0x8a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "lsquo"

    aput-object v3, v0, v4

    const-string v3, "8216"

    aput-object v3, v0, v5

    const/16 v3, 0x8b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "rsquo"

    aput-object v3, v0, v4

    const-string v3, "8217"

    aput-object v3, v0, v5

    const/16 v3, 0x8c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "sbquo"

    aput-object v3, v0, v4

    const-string v3, "8218"

    aput-object v3, v0, v5

    const/16 v3, 0x8d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "ldquo"

    aput-object v3, v0, v4

    const-string v3, "8220"

    aput-object v3, v0, v5

    const/16 v3, 0x8e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "rdquo"

    aput-object v3, v0, v4

    const-string v3, "8221"

    aput-object v3, v0, v5

    const/16 v3, 0x8f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "bdquo"

    aput-object v3, v0, v4

    const-string v3, "8222"

    aput-object v3, v0, v5

    const/16 v3, 0x90

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "dagger"

    aput-object v3, v0, v4

    const-string v3, "8224"

    aput-object v3, v0, v5

    const/16 v3, 0x91

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "Dagger"

    aput-object v3, v0, v4

    const-string v3, "8225"

    aput-object v3, v0, v5

    const/16 v3, 0x92

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "permil"

    aput-object v3, v0, v4

    const-string v3, "8240"

    aput-object v3, v0, v5

    const/16 v3, 0x93

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "lsaquo"

    aput-object v3, v0, v4

    const-string v3, "8249"

    aput-object v3, v0, v5

    const/16 v3, 0x94

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "rsaquo"

    aput-object v3, v0, v4

    const-string v3, "8250"

    aput-object v3, v0, v5

    const/16 v3, 0x95

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "euro"

    aput-object v3, v0, v4

    const-string v3, "8364"

    aput-object v3, v0, v5

    const/16 v3, 0x96

    aput-object v0, v1, v3

    .line 353
    sput-object v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->HTML40_ARRAY:[[Ljava/lang/String;

    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "quot"

    aput-object v3, v1, v4

    const-string v3, "34"

    aput-object v3, v1, v5

    aput-object v1, v0, v4

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "amp"

    aput-object v3, v1, v4

    const-string v3, "38"

    aput-object v3, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "lt"

    aput-object v3, v1, v4

    const-string v3, "60"

    aput-object v3, v1, v5

    aput-object v1, v0, v2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "gt"

    aput-object v2, v1, v4

    const-string v2, "62"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 861
    sput-object v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->BASIC_ARRAY:[[Ljava/lang/String;

    .line 888
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->HTML40:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;

    .line 889
    sget-object v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->HTML40:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->fillWithHtml40Entities(Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->map:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;

    return-void
.end method

.method static fillWithHtml40Entities(Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;)V
    .locals 1

    .line 893
    sget-object v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->addEntities([[Ljava/lang/String;)V

    .line 894
    sget-object v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->addEntities([[Ljava/lang/String;)V

    .line 895
    sget-object v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->HTML40_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->addEntities([[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 6

    .line 975
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 976
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->addEntity(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->map:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public entityValue(Ljava/lang/String;)I
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->map:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;->value(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public unescape(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;
    .locals 16

    move-object/from16 v0, p1

    .line 1001
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1003
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_9

    .line 1006
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x26

    const/4 v8, 0x1

    if-ne v6, v7, :cond_7

    add-int/lit8 v9, v5, 0x1

    const/16 v10, 0x3b

    .line 1008
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 1010
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v9, p0

    goto/16 :goto_5

    .line 1013
    :cond_0
    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1014
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v13, 0x2

    if-lez v9, :cond_5

    .line 1017
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x23

    if-ne v14, v15, :cond_4

    if-le v9, v8, :cond_4

    .line 1018
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x78

    if-eq v14, v15, :cond_2

    const/16 v15, 0x58

    if-ne v14, v15, :cond_1

    goto :goto_1

    .line 1026
    :cond_1
    :try_start_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :cond_2
    :goto_1
    if-le v9, v13, :cond_3

    .line 1022
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x10

    invoke-static {v9, v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    .line 1023
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_3
    const/4 v9, -0x1

    :goto_2
    move v14, v9

    move-object/from16 v9, p0

    goto :goto_3

    :cond_4
    move-object/from16 v9, p0

    .line 1031
    invoke-virtual {v9, v6}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->entityValue(Ljava/lang/String;)I

    move-result v14

    goto :goto_3

    :cond_5
    move-object/from16 v9, p0

    const/4 v14, -0x1

    :goto_3
    if-ne v14, v12, :cond_6

    .line 1035
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v12, :cond_8

    .line 1038
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v5, v11

    goto :goto_5

    :cond_6
    int-to-char v6, v14

    .line 1043
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array v6, v13, [I

    aput v5, v6, v4

    aput v11, v6, v8

    .line 1044
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v9, p0

    .line 1048
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    :goto_5
    add-int/2addr v5, v8

    goto/16 :goto_0

    :cond_9
    move-object/from16 v9, p0

    .line 1051
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
