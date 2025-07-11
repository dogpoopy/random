.class public Landroid/support/v4/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final FETCH_STRATEGY_ASYNC:I = 0x1

.field public static final FETCH_STRATEGY_BLOCKING:I = 0x0

.field public static final INFINITE_TIMEOUT_VALUE:I = -0x1

.field private static final ITALIC:I = 0x1

.field private static final NORMAL_WEIGHT:I = 0x190


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    if-ne v1, v2, :cond_1

    .line 161
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "certsId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    if-eqz p1, :cond_4

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 222
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 224
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 225
    .local v3, "isArrayOfArrays":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 226
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 227
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 228
    .local v5, "certId":I
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "certsArray":[Ljava/lang/String;
    invoke-static {v6}, Landroid/support/v4/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 230
    .local v7, "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v5    # "certId":I
    .end local v6    # "certsArray":[Ljava/lang/String;
    .end local v7    # "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_1
    goto :goto_2

    .line 233
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "certsArray":[Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v4/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 235
    .local v4, "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v2    # "certsArray":[Ljava/lang/String;
    .end local v3    # "isArrayOfArrays":Z
    .end local v4    # "certsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_4
    if-eqz v0, :cond_5

    move-object v1, v0

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const-string v0, "font-family"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 172
    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 179
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/compat/R$styleable;->FontFamily:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 180
    .local v1, "array":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/compat/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "authority":Ljava/lang/String;
    sget v3, Landroid/support/compat/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "providerPackage":Ljava/lang/String;
    sget v4, Landroid/support/compat/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "query":Ljava/lang/String;
    sget v5, Landroid/support/compat/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 184
    .local v5, "certsId":I
    sget v6, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 186
    .local v6, "strategy":I
    sget v7, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v8, 0x1f4

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 188
    .local v7, "timeoutMs":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    const/4 v8, 0x3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 190
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v8, :cond_0

    .line 191
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {p1, v5}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v8

    .line 194
    .local v8, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    new-instance v9, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    new-instance v10, Landroid/support/v4/provider/FontRequest;

    invoke-direct {v10, v2, v3, v4, v8}, Landroid/support/v4/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v9, v10, v6, v7}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroid/support/v4/provider/FontRequest;II)V

    return-object v9

    .line 197
    .end local v8    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v9, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;>;"
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v8, :cond_4

    .line 199
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    goto :goto_1

    .line 200
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, "tag":Ljava/lang/String;
    const-string v11, "font"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 202
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 206
    .end local v10    # "tag":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 207
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 208
    const/4 v8, 0x0

    return-object v8

    .line 210
    :cond_5
    new-instance v8, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    .line 211
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 210
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {v8, v10}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    return-object v8
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 254
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroid/support/compat/R$styleable;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 255
    .local v1, "array":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/compat/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/support/compat/R$styleable;->FontFamilyFont_fontWeight:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/support/compat/R$styleable;->FontFamilyFont_android_fontWeight:I

    .line 258
    .local v2, "weightAttr":I
    :goto_0
    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 259
    .local v3, "weight":I
    sget v4, Landroid/support/compat/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/support/compat/R$styleable;->FontFamilyFont_fontStyle:I

    goto :goto_1

    :cond_1
    sget v4, Landroid/support/compat/R$styleable;->FontFamilyFont_android_fontStyle:I

    .line 262
    .local v4, "styleAttr":I
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move v6, v7

    .line 263
    .local v6, "isItalic":Z
    sget v7, Landroid/support/compat/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Landroid/support/compat/R$styleable;->FontFamilyFont_font:I

    goto :goto_3

    :cond_3
    sget v7, Landroid/support/compat/R$styleable;->FontFamilyFont_android_font:I

    .line 266
    .local v7, "resourceAttr":I
    :goto_3
    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 267
    .local v5, "resourceId":I
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    .line 270
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 272
    :cond_4
    new-instance v9, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {v9, v8, v3, v6, v5}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZI)V

    return-object v9
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    const/4 v0, 0x1

    .line 277
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_2

    .line 278
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 281
    nop

    .line 284
    :goto_1
    goto :goto_0

    .line 287
    :cond_2
    return-void
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "stringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 246
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v4    # "item":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-object v0
.end method
