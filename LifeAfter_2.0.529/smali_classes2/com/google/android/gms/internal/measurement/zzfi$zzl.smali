.class public final Lcom/google/android/gms/internal/measurement/zzfi$zzl;
.super Lcom/google/android/gms/internal/measurement/zzix;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzl;",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkw<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/zzjg;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzjg;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcb()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcb()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh:Lcom/google/android/gms/internal/measurement/zzjf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfi$zzl;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzo()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfi$zzl;Ljava/lang/Iterable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzd(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzd;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Lcom/google/android/gms/internal/measurement/zzjf;)Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfi$zzl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzm()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfi$zzl;Ljava/lang/Iterable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzb(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 58
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjg;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Lcom/google/android/gms/internal/measurement/zzjg;)Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzjg;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfi$zzl;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzl()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfi$zzl;Ljava/lang/Iterable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzc(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzm;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 65
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Lcom/google/android/gms/internal/measurement/zzjf;)Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzfi$zzl;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzn()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzfi$zzl;Ljava/lang/Iterable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzd(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 72
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjg;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Lcom/google/android/gms/internal/measurement/zzjg;)Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze:Lcom/google/android/gms/internal/measurement/zzjg;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zzbx()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfi$zzl;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/measurement/zzfi$zzl;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    return-object v0
.end method

.method private final zzl()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    return-void
.end method

.method private final zzm()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcb()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzjg;

    return-void
.end method

.method private final zzn()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh:Lcom/google/android/gms/internal/measurement/zzjf;

    return-void
.end method

.method private final zzo()V
    .locals 1

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzcb()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze:Lcom/google/android/gms/internal/measurement/zzjg;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->size()I

    move-result v0

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfh;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 24
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzix$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzix$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 22
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/google/android/gms/internal/measurement/zzfi$zzd;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfi$zzm;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfh;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzjg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjg;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze:Lcom/google/android/gms/internal/measurement/zzjg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjg;->size()I

    move-result v0

    return v0
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzd;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzg:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzf:Lcom/google/android/gms/internal/measurement/zzjg;

    return-object v0
.end method

.method public final zzj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzm;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zze:Lcom/google/android/gms/internal/measurement/zzjg;

    return-object v0
.end method
