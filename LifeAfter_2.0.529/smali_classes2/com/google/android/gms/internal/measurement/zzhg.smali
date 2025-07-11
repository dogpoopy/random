.class abstract Lcom/google/android/gms/internal/measurement/zzhg;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lcom/google/android/gms/internal/measurement/zzjf<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Z

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 17
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 29
    invoke-super {p0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 33
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 31
    invoke-super {p0, p1}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 20
    invoke-super {p0}, Ljava/util/AbstractList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 36
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 38
    :cond_1
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_2

    .line 39
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 40
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->size()I

    move-result v1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 45
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzhg;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzhg;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final i_()V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Z

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 8
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 57
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 59
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 10
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final zza()V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Z

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzc()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zza:Z

    return v0
.end method
