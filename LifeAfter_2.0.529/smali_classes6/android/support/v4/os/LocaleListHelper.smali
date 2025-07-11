.class final Landroid/support/v4/os/LocaleListHelper;
.super Ljava/lang/Object;
.source "LocaleListHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

.field private static sLastDefaultLocale:Ljava/util/Locale;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    .line 52
    new-instance v1, Landroid/support/v4/os/LocaleListHelper;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 300
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 301
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 351
    const-string v0, "en-Latn"

    invoke-static {v0}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    .line 476
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    .line 479
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 481
    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 483
    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 485
    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V
    .locals 7
    .param p1, "topLocale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "otherLocales"    # Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    if-eqz p1, :cond_a

    .line 214
    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    .line 215
    .local v1, "inputLength":I
    :goto_0
    const/4 v2, -0x1

    .line 216
    .local v2, "topLocaleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 217
    iget-object v4, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    move v2, v3

    .line 219
    goto :goto_2

    .line 216
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 223
    .end local v3    # "i":I
    :cond_2
    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v1

    .line 224
    .local v4, "outputLength":I
    new-array v5, v4, [Ljava/util/Locale;

    .line 225
    .local v5, "localeList":[Ljava/util/Locale;
    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v0

    .line 226
    if-ne v2, v3, :cond_5

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 229
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_4
    goto :goto_7

    .line 232
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v2, :cond_6

    .line 233
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 235
    .end local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v1, :cond_7

    .line 236
    iget-object v3, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    aput-object v3, v5, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 240
    .end local v0    # "i":I
    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    if-ge v3, v4, :cond_9

    .line 242
    aget-object v6, v5, v3

    invoke-static {v6}, Landroid/support/v4/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_8

    .line 245
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 249
    .end local v3    # "i":I
    :cond_9
    iput-object v5, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 251
    return-void

    .line 211
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "inputLength":I
    .end local v2    # "topLocaleIndex":I
    .end local v4    # "outputLength":I
    .end local v5    # "localeList":[Ljava/util/Locale;
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "topLocale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .locals 8
    .param p1, "list"    # [Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    array-length v0, p1

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    iput-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    goto/16 :goto_1

    .line 178
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Locale;

    .line 179
    .local v0, "localeList":[Ljava/util/Locale;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v1, "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 182
    aget-object v4, p1, v3

    .line 183
    .local v4, "l":Ljava/util/Locale;
    const-string v5, "list["

    if-eqz v4, :cond_3

    .line 185
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 188
    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 189
    .local v5, "localeClone":Ljava/util/Locale;
    aput-object v5, v0, v3

    .line 190
    invoke-static {v5}, Landroid/support/v4/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 192
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v4    # "l":Ljava/util/Locale;
    .end local v5    # "localeClone":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .restart local v4    # "l":Ljava/util/Locale;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is a repetition"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_3
    new-instance v6, Ljava/lang/NullPointerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is null"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 197
    .end local v3    # "i":I
    .end local v4    # "l":Ljava/util/Locale;
    :cond_4
    iput-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    .line 200
    .end local v0    # "localeList":[Ljava/util/Locale;
    .end local v1    # "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 2
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 393
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    .line 394
    .local v0, "bestIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 6
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 355
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 356
    return v2

    .line 358
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    .line 359
    const/4 v0, -0x1

    return v0

    .line 362
    :cond_1
    const v0, 0x7fffffff

    .line 364
    .local v0, "bestIndex":I
    if-eqz p2, :cond_3

    .line 365
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, v1}, Landroid/support/v4/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    .line 366
    .local v1, "idx":I
    if-nez v1, :cond_2

    .line 367
    return v2

    .line 368
    :cond_2
    if-ge v1, v0, :cond_3

    .line 369
    move v0, v1

    .line 372
    .end local v1    # "idx":I
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 373
    .local v3, "languageTag":Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 376
    .local v4, "supportedLocale":Ljava/util/Locale;
    invoke-direct {p0, v4}, Landroid/support/v4/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v5

    .line 377
    .local v5, "idx":I
    if-nez v5, :cond_4

    .line 378
    return v2

    .line 379
    :cond_4
    if-ge v5, v0, :cond_5

    .line 380
    move v0, v5

    .line 382
    .end local v3    # "languageTag":Ljava/lang/String;
    .end local v4    # "supportedLocale":Ljava/util/Locale;
    .end local v5    # "idx":I
    :cond_5
    goto :goto_0

    .line 383
    :cond_6
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_7

    .line 385
    return v2

    .line 387
    :cond_7
    return v0
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 3
    .param p1, "supportedLocale"    # Ljava/util/Locale;

    .line 342
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 343
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/support/v4/os/LocaleListHelper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v1

    .line 344
    .local v1, "score":I
    if-lez v1, :cond_0

    .line 345
    return v0

    .line 342
    .end local v1    # "score":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "idx":I
    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method static forLanguageTags(Ljava/lang/String;)Landroid/support/v4/os/LocaleListHelper;
    .locals 4
    .param p0, "list"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 274
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "tags":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/util/Locale;

    .line 279
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 280
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v2, v1}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    return-object v2

    .line 275
    .end local v0    # "tags":[Ljava/lang/String;
    .end local v1    # "localeArray":[Ljava/util/Locale;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/support/v4/os/LocaleListHelper;->getEmptyLocaleList()Landroid/support/v4/os/LocaleListHelper;

    move-result-object v0

    return-object v0
.end method

.method static getAdjustedDefault()Landroid/support/v4/os/LocaleListHelper;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    .line 534
    invoke-static {}, Landroid/support/v4/os/LocaleListHelper;->getDefault()Landroid/support/v4/os/LocaleListHelper;

    .line 535
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v0

    return-object v1

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getDefault()Landroid/support/v4/os/LocaleListHelper;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    .line 503
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 504
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_0
    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 510
    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    const/4 v3, 0x0

    .line 511
    invoke-virtual {v2, v3}, Landroid/support/v4/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v1

    return-object v2

    .line 516
    :cond_0
    new-instance v2, Landroid/support/v4/os/LocaleListHelper;

    sget-object v3, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v2, v0, v3}, Landroid/support/v4/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V

    sput-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 518
    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    sput-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 524
    :cond_1
    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v1

    return-object v2

    .line 525
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getEmptyLocaleList()Landroid/support/v4/os/LocaleListHelper;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 260
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 288
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    return-object v0

    .line 292
    :cond_0
    return-object v1

    .line 295
    .end local v0    # "script":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    .line 305
    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 309
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

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

.method static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .locals 6
    .param p0, "supportedLocales"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 456
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 457
    return v0

    .line 460
    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 465
    return v3

    .line 467
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p0, v2

    .line 468
    .local v4, "locale":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 469
    return v3

    .line 467
    .end local v4    # "locale":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_3
    return v0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 5
    .param p0, "supported"    # Ljava/util/Locale;
    .param p1, "desired"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x1L
    .end annotation

    .line 314
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 315
    return v1

    .line 317
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 318
    return v2

    .line 320
    :cond_1
    invoke-static {p0}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    invoke-static {p0}, Landroid/support/v4/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "supportedScr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 330
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "supportedRegion":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1

    .line 335
    .end local v3    # "supportedRegion":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Landroid/support/v4/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "desiredScr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 323
    .end local v0    # "supportedScr":Ljava/lang/String;
    .end local v1    # "desiredScr":Ljava/lang/String;
    :cond_6
    :goto_1
    return v2
.end method

.method static setDefault(Landroid/support/v4/os/LocaleListHelper;)V
    .locals 1
    .param p0, "locales"    # Landroid/support/v4/os/LocaleListHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/os/LocaleListHelper;->setDefault(Landroid/support/v4/os/LocaleListHelper;I)V

    .line 552
    return-void
.end method

.method static setDefault(Landroid/support/v4/os/LocaleListHelper;I)V
    .locals 4
    .param p0, "locales"    # Landroid/support/v4/os/LocaleListHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p1, "localeIndex"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 565
    if-eqz p0, :cond_2

    .line 568
    invoke-virtual {p0}, Landroid/support/v4/os/LocaleListHelper;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v4/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    .line 573
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 574
    sput-object p0, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 575
    sput-object p0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 576
    if-nez p1, :cond_0

    .line 577
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    goto :goto_0

    .line 579
    :cond_0
    new-instance v1, Landroid/support/v4/os/LocaleListHelper;

    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v3, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    .line 582
    :goto_0
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locales is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 110
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 111
    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Landroid/support/v4/os/LocaleListHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 114
    return v2

    .line 116
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/support/v4/os/LocaleListHelper;

    iget-object v1, v1, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    .line 117
    .local v1, "otherList":[Ljava/util/Locale;
    iget-object v3, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v3

    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 118
    return v2

    .line 120
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 121
    aget-object v4, v4, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 122
    return v2

    .line 120
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method get(I)Ljava/util/Locale;
    .locals 2
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 63
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getFirstMatchIndex([Ljava/lang/String;)I
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 418
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 438
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .locals 1
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 446
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/os/LocaleListHelper;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 429
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 130
    const/4 v0, 0x1

    .line 131
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 132
    mul-int/lit8 v3, v0, 0x1f

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int v0, v3, v2

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method indexOf(Ljava/util/Locale;)I
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 101
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    return v0

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method isEmpty()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method size()I
    .locals 1
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method toLanguageTags()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 142
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 144
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
