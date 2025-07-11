.class final Lcom/google/android/gms/internal/measurement/zzjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzkk;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzkk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzka;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkc;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzkk;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziy;->zza()Lcom/google/android/gms/internal/measurement/zziy;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>([Lcom/google/android/gms/internal/measurement/zzkk;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjx;-><init>(Lcom/google/android/gms/internal/measurement/zzkk;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzkk;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 56
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkk;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method private static zza()Lcom/google/android/gms/internal/measurement/zzkk;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzkh;)Z
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:[I

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkh;->zzb()Lcom/google/android/gms/internal/measurement/zzky;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzky;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzlb<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzld;->zza(Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkh;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    const-class v0, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzld;->zzb()Lcom/google/android/gms/internal/measurement/zzma;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzin;->zzb()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v0

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zza()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzkj;)Lcom/google/android/gms/internal/measurement/zzkp;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzld;->zza()Lcom/google/android/gms/internal/measurement/zzma;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzin;->zza()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zza()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkp;->zza(Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzkj;)Lcom/google/android/gms/internal/measurement/zzkp;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Lcom/google/android/gms/internal/measurement/zzkh;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb()Lcom/google/android/gms/internal/measurement/zzkr;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v4

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzld;->zzb()Lcom/google/android/gms/internal/measurement/zzma;

    move-result-object v5

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzin;->zzb()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v6

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v7

    move-object v1, p1

    .line 26
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkh;Lcom/google/android/gms/internal/measurement/zzkr;Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzkg;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb()Lcom/google/android/gms/internal/measurement/zzkr;

    move-result-object v3

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v4

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzld;->zzb()Lcom/google/android/gms/internal/measurement/zzma;

    move-result-object v5

    const/4 v6, 0x0

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zzb()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v7

    move-object v1, p1

    .line 32
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkh;Lcom/google/android/gms/internal/measurement/zzkr;Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzkg;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object p1

    return-object p1

    .line 34
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Lcom/google/android/gms/internal/measurement/zzkh;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zza()Lcom/google/android/gms/internal/measurement/zzkr;

    move-result-object v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjs;->zza()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v4

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzld;->zza()Lcom/google/android/gms/internal/measurement/zzma;

    move-result-object v5

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzin;->zza()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v6

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zza()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v7

    move-object v1, p1

    .line 41
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkh;Lcom/google/android/gms/internal/measurement/zzkr;Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzkg;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object p1

    return-object p1

    .line 43
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zza()Lcom/google/android/gms/internal/measurement/zzkr;

    move-result-object v3

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjs;->zza()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v4

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzld;->zza()Lcom/google/android/gms/internal/measurement/zzma;

    move-result-object v5

    const/4 v6, 0x0

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zza()Lcom/google/android/gms/internal/measurement/zzkg;

    move-result-object v7

    move-object v1, p1

    .line 47
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkh;Lcom/google/android/gms/internal/measurement/zzkr;Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzkg;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object p1

    return-object p1
.end method
