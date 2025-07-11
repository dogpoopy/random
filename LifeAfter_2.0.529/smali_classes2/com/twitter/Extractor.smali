.class public Lcom/twitter/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/Extractor$IndexConverter;,
        Lcom/twitter/Extractor$Entity;
    }
.end annotation


# instance fields
.field protected extractURLWithoutProtocol:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    return-void
.end method

.method private extractHashtagsWithIndices(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 370
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-char v4, v0, v3

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const v5, 0xff03

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 380
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    sget-object v1, Lcom/twitter/Regex;->VALID_HASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 383
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    sget-object v3, Lcom/twitter/Regex;->INVALID_HASHTAG_MATCH_END:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_5

    .line 386
    new-instance v2, Lcom/twitter/Extractor$Entity;

    sget-object v3, Lcom/twitter/Extractor$Entity$Type;->HASHTAG:Lcom/twitter/Extractor$Entity$Type;

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4}, Lcom/twitter/Extractor$Entity;-><init>(Ljava/util/regex/Matcher;Lcom/twitter/Extractor$Entity$Type;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_8

    .line 392
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 393
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 394
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    invoke-direct {p0, v0}, Lcom/twitter/Extractor;->removeOverlappingEntities(Ljava/util/List;)V

    .line 398
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 399
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 400
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/twitter/Extractor$Entity;

    .line 401
    invoke-virtual {p2}, Lcom/twitter/Extractor$Entity;->getType()Lcom/twitter/Extractor$Entity$Type;

    move-result-object p2

    sget-object v1, Lcom/twitter/Extractor$Entity$Type;->HASHTAG:Lcom/twitter/Extractor$Entity$Type;

    if-eq p2, v1, :cond_7

    .line 402
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    return-object v0

    .line 363
    :cond_9
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private removeOverlappingEntities(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;)V"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/twitter/Extractor$1;

    invoke-direct {v0, p0}, Lcom/twitter/Extractor$1;-><init>(Lcom/twitter/Extractor;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/Extractor$Entity;

    .line 138
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 140
    invoke-virtual {v0}, Lcom/twitter/Extractor$Entity;->getEnd()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public extractCashtags(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 418
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractCashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 424
    iget-object v1, v1, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 419
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extractCashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x24

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 449
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    sget-object v1, Lcom/twitter/Regex;->VALID_CASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 452
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    new-instance v1, Lcom/twitter/Extractor$Entity;

    sget-object v2, Lcom/twitter/Extractor$Entity$Type;->CASHTAG:Lcom/twitter/Extractor$Entity$Type;

    const/4 v3, 0x3

    invoke-direct {v1, p1, v2, v3}, Lcom/twitter/Extractor$Entity;-><init>(Ljava/util/regex/Matcher;Lcom/twitter/Extractor$Entity$Type;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 438
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extractEntitiesWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, v1}, Lcom/twitter/Extractor;->extractHashtagsWithIndices(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractMentionsOrListsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractCashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-direct {p0, v0}, Lcom/twitter/Extractor;->removeOverlappingEntities(Ljava/util/List;)V

    return-object v0
.end method

.method public extractHashtags(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 336
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractHashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 338
    iget-object v1, v1, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 333
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extractHashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 351
    invoke-direct {p0, p1, v0}, Lcom/twitter/Extractor;->extractHashtagsWithIndices(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extractMentionedScreennames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractMentionedScreennamesWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 178
    iget-object v1, v1, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 173
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extractMentionedScreennamesWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractMentionsOrListsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 192
    iget-object v2, v1, Lcom/twitter/Extractor$Entity;->listSlug:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public extractMentionsOrListsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-char v5, v0, v3

    const/16 v6, 0x40

    if-eq v5, v6, :cond_2

    const v6, 0xff20

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 218
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    sget-object v1, Lcom/twitter/Regex;->VALID_MENTION_OR_LIST:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 220
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 221
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    sget-object v3, Lcom/twitter/Regex;->INVALID_MENTION_MATCH_END:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x4

    .line 223
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    if-nez v3, :cond_6

    .line 224
    new-instance v2, Lcom/twitter/Extractor$Entity;

    sget-object v3, Lcom/twitter/Extractor$Entity$Type;->MENTION:Lcom/twitter/Extractor$Entity$Type;

    invoke-direct {v2, v1, v3, v5}, Lcom/twitter/Extractor$Entity;-><init>(Ljava/util/regex/Matcher;Lcom/twitter/Extractor$Entity$Type;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    :cond_6
    new-instance v3, Lcom/twitter/Extractor$Entity;

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 227
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    .line 228
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 229
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/twitter/Extractor$Entity$Type;->MENTION:Lcom/twitter/Extractor$Entity$Type;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/twitter/Extractor$Entity;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V

    .line 226
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-object v0

    .line 201
    :cond_8
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extractReplyScreenname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 249
    :cond_0
    sget-object v1, Lcom/twitter/Regex;->VALID_REPLY:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 252
    sget-object v2, Lcom/twitter/Regex;->INVALID_MENTION_MATCH_END:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x1

    .line 255
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public extractURLs(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 275
    iget-object v1, v1, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 270
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    .line 288
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 295
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    sget-object v1, Lcom/twitter/Regex;->VALID_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 298
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    .line 299
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 302
    iget-boolean v1, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/twitter/Regex;->INVALID_URL_WITHOUT_PROTOCOL_MATCH_BEGIN:Ljava/util/regex/Pattern;

    const/4 v2, 0x2

    .line 304
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    .line 308
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    .line 310
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    .line 311
    sget-object v4, Lcom/twitter/Regex;->VALID_TCO_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 312
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 314
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    .line 318
    :cond_4
    new-instance v4, Lcom/twitter/Extractor$Entity;

    sget-object v5, Lcom/twitter/Extractor$Entity$Type;->URL:Lcom/twitter/Extractor$Entity$Type;

    invoke-direct {v4, v3, v1, v2, v5}, Lcom/twitter/Extractor$Entity;-><init>(IILjava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0

    .line 292
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isExtractURLWithoutProtocol()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    return v0
.end method

.method public modifyIndicesFromUTF16ToToUnicode(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;)V"
        }
    .end annotation

    .line 497
    new-instance v0, Lcom/twitter/Extractor$IndexConverter;

    invoke-direct {v0, p1}, Lcom/twitter/Extractor$IndexConverter;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/twitter/Extractor$Entity;

    .line 500
    iget v1, p2, Lcom/twitter/Extractor$Entity;->start:I

    invoke-virtual {v0, v1}, Lcom/twitter/Extractor$IndexConverter;->codeUnitsToCodePoints(I)I

    move-result v1

    iput v1, p2, Lcom/twitter/Extractor$Entity;->start:I

    .line 501
    iget v1, p2, Lcom/twitter/Extractor$Entity;->end:I

    invoke-virtual {v0, v1}, Lcom/twitter/Extractor$IndexConverter;->codeUnitsToCodePoints(I)I

    move-result v1

    iput v1, p2, Lcom/twitter/Extractor$Entity;->end:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public modifyIndicesFromUnicodeToUTF16(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;)V"
        }
    .end annotation

    .line 478
    new-instance v0, Lcom/twitter/Extractor$IndexConverter;

    invoke-direct {v0, p1}, Lcom/twitter/Extractor$IndexConverter;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/twitter/Extractor$Entity;

    .line 481
    iget v1, p2, Lcom/twitter/Extractor$Entity;->start:I

    invoke-virtual {v0, v1}, Lcom/twitter/Extractor$IndexConverter;->codePointsToCodeUnits(I)I

    move-result v1

    iput v1, p2, Lcom/twitter/Extractor$Entity;->start:I

    .line 482
    iget v1, p2, Lcom/twitter/Extractor$Entity;->end:I

    invoke-virtual {v0, v1}, Lcom/twitter/Extractor$IndexConverter;->codePointsToCodeUnits(I)I

    move-result v1

    iput v1, p2, Lcom/twitter/Extractor$Entity;->end:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExtractURLWithoutProtocol(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    return-void
.end method
