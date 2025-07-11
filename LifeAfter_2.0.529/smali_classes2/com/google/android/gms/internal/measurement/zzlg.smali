.class Lcom/google/android/gms/internal/measurement/zzlg;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final zza:I

.field private zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzln;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private zzd:Z

.field private volatile zze:Lcom/google/android/gms/internal/measurement/zzls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzls;"
        }
    .end annotation
.end field

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile zzg:Lcom/google/android/gms/internal/measurement/zzlk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzlk;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 85
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:I

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzf:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzlu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;-><init>(I)V

    return-void
.end method

.method private final zza(Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzln;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    :cond_0
    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v2, v1, v0

    .line 10
    div-int/lit8 v2, v2, 0x2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzln;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method static zza(I)Lcom/google/android/gms/internal/measurement/zzlg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/google/android/gms/internal/measurement/zzis<",
            "TFieldDescriptorType;>;>(I)",
            "Lcom/google/android/gms/internal/measurement/zzlg<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzlf;-><init>(I)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzlg;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzlg;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/measurement/zzlg;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method private final zzc(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzg()V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzln;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzf()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Lcom/google/android/gms/internal/measurement/zzlg;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/measurement/zzlg;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzf:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzlg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzg()V

    return-void
.end method

.method private final zzf()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzg()V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    .line 82
    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzf:Ljava/util/Map;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private final zzg()V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzd:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzg()V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 110
    check-cast p1, Ljava/lang/Comparable;

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zze:Lcom/google/android/gms/internal/measurement/zzls;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzls;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzls;-><init>(Lcom/google/android/gms/internal/measurement/zzlg;Lcom/google/android/gms/internal/measurement/zzlr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zze:Lcom/google/android/gms/internal/measurement/zzls;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zze:Lcom/google/android/gms/internal/measurement/zzls;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzlg;

    if-nez v1, :cond_1

    .line 115
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 116
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlg;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->size()I

    move-result v1

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlg;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v2

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlg;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    .line 124
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v1, :cond_6

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/lang/Comparable;

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzln;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzln;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzg()V

    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 61
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzg()V

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzln;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzg()V

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 49
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:I

    if-lt v0, v1, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzf()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:I

    if-ne v1, v2, :cond_3

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzln;

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzf()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzln;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzln;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Lcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public zza()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzd:Z

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzf:Ljava/util/Map;

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzd:Z

    :cond_2
    return-void
.end method

.method public final zzb()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzb(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public final zzc()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlm;->zza()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzg:Lcom/google/android/gms/internal/measurement/zzlk;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzlk;-><init>(Lcom/google/android/gms/internal/measurement/zzlg;Lcom/google/android/gms/internal/measurement/zzlj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzg:Lcom/google/android/gms/internal/measurement/zzlk;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzg:Lcom/google/android/gms/internal/measurement/zzlk;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zzd:Z

    return v0
.end method
