.class public final synthetic Lcom/google/common/collect/SetMultimap$-CC;
.super Ljava/lang/Object;
.source "SetMultimap.java"


# direct methods
.method public static synthetic $default$entries(Lcom/google/common/collect/SetMultimap;)Ljava/util/Collection;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SetMultimap;

    .line 54
    invoke-interface {p0}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $default$get(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SetMultimap;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param

    .line 54
    invoke-interface {p0, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$removeAll(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SetMultimap;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 54
    invoke-interface {p0, p1}, Lcom/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$replaceValues(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/collect/SetMultimap;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param

    .line 54
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
