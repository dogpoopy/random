.class public Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;
.super Ljava/lang/Object;
.source "ExcludedSupportedSizesQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExcludedSupportedSizesQuirk"

.field private static final UNKNOWN_IMAGE_FORMAT:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x22

    if-eq p2, p1, :cond_0

    const/16 p1, 0x23

    if-eq p2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 158
    :cond_0
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x2d0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x190

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x100

    if-ne p2, p1, :cond_0

    .line 134
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x1040

    const/16 v1, 0xc30

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xfa0

    const/16 v1, 0xbb8

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x100

    if-ne p2, p1, :cond_0

    .line 144
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x1040

    const/16 v1, 0xc30

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xfa0

    const/16 v1, 0xbb8

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x23

    const/16 v3, 0x22

    const/16 v4, 0x438

    const/16 v5, 0x480

    const/16 v6, 0x600

    const/16 v7, 0x780

    const/16 v8, 0x800

    if-eqz v1, :cond_2

    if-eq p2, v3, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_4

    .line 224
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 215
    :cond_1
    :goto_0
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xc18

    const/16 p3, 0x1020

    invoke-direct {p1, p3, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x912

    invoke-direct {p1, p3, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xc10

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x990

    const/16 p3, 0xcc0

    invoke-direct {p1, p3, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x72c

    invoke-direct {p1, p3, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v1, "1"

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_3

    if-eqz p3, :cond_4

    .line 231
    :cond_3
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xa10

    const/16 p3, 0x78c

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xa00

    const/16 p3, 0x5a0

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v8, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v7, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "0"

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x22

    const/16 v6, 0x438

    const/16 v7, 0x480

    const/16 v8, 0x600

    const/16 v9, 0x72c

    const/16 v10, 0x780

    const/16 v11, 0x990

    const/16 v12, 0x800

    const/16 v13, 0xcc0

    if-eqz v3, :cond_2

    const/16 v0, 0x912

    const/16 v3, 0x1020

    const/16 v14, 0xc10

    if-eq v1, v5, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_4

    .line 182
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v14, v14}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v11}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v9}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v8}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v10, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 173
    :cond_1
    :goto_0
    new-instance v1, Landroid/util/Size;

    const/16 v4, 0xc18

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v14, v14}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v11}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v9}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v8}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v10, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v3, "1"

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eqz p3, :cond_4

    .line 193
    :cond_3
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v11}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v9}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v11, v11}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v10, v10}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v8}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v10, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v2
.end method

.method private static isHuaweiP20Lite()Z
    .locals 2

    .line 71
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "HWANE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOnePlus6()Z
    .locals 2

    .line 62
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OnePlus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "OnePlus6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOnePlus6T()Z
    .locals 2

    .line 66
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OnePlus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "OnePlus6T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSamsungJ7Api27Above()Z
    .locals 2

    .line 81
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMSUNG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J7XELTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSamsungJ7PrimeApi27Above()Z
    .locals 2

    .line 75
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMSUNG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON7XELTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static load()Z
    .locals 1

    .line 57
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isHuaweiP20Lite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7PrimeApi27Above()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7Api27Above()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isOnePlus6T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isHuaweiP20Lite()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0, p1, p2, v1}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 101
    :cond_2
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7PrimeApi27Above()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-direct {p0, p1, p2, v1}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 104
    :cond_3
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7Api27Above()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-direct {p0, p1, p2, v1}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "ExcludedSupportedSizesQuirk"

    const-string p2, "Cannot retrieve list of supported sizes to exclude on this device."

    .line 107
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getExcludedSizes(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isHuaweiP20Lite()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p1, v1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7PrimeApi27Above()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0, p1, v1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 123
    :cond_1
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->isSamsungJ7Api27Above()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0, p1, v1, p2}, Landroidx/camera/camera2/internal/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "ExcludedSupportedSizesQuirk"

    const-string p2, "Cannot retrieve list of supported sizes to exclude on this device."

    .line 126
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
