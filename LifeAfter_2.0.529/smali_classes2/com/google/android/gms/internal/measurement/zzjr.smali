.class final Lcom/google/android/gms/internal/measurement/zzjr;
.super Lcom/google/android/gms/internal/measurement/zzjs;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# static fields
.field private static final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Lcom/google/android/gms/internal/measurement/zzjv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzju;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjr;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjr;->zzc(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjp;

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjq;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/measurement/zzjq;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzkv;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjf;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/measurement/zzjf;->zza(I)Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object p3

    move-object v0, p3

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 16
    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzmb;

    if-eqz v1, :cond_4

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjq;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzjq;-><init>(I)V

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzkv;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjf;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjf;

    .line 22
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzjf;->zzc()Z

    move-result v2

    if-nez v2, :cond_5

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjf;->zza(I)Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    .line 24
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static zzc(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmg;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 41
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzjr;->zzc(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 46
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v1, :cond_1

    move-object p2, v0

    .line 48
    :cond_1
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;J)V
    .locals 3

    .line 29
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 30
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjp;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjp;->h_()Lcom/google/android/gms/internal/measurement/zzjp;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 34
    :cond_1
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzkv;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjf;

    if-eqz v1, :cond_3

    .line 35
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->zzc()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->i_()V

    :cond_2
    return-void

    .line 38
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 39
    :goto_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
