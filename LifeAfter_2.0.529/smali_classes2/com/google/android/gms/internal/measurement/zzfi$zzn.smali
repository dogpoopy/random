.class public final Lcom/google/android/gms/internal/measurement/zzfi$zzn;
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
    name = "zzn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfi$zzn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzn;",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkw<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:F

.field private zzk:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzg:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzh:Ljava/lang/String;

    return-void
.end method

.method private final zza(D)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    .line 57
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzk:D

    return-void
.end method

.method private final zza(J)V
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    .line 60
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzi:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfi$zzn;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzp()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfi$zzn;D)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zza(D)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfi$zzn;J)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzb(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfi$zzn;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzg:Ljava/lang/String;

    return-void
.end method

.method private final zzb(J)V
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    .line 67
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzf:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfi$zzn;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzo()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfi$zzn;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zza(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfi$zzn;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfi$zzn;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzn()V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfi$zzn$zza;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zzbx()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi$zzn$zza;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfi$zzn;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    return-object v0
.end method

.method private final zzn()V
    .locals 2

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzk:D

    return-void
.end method

.method private final zzo()V
    .locals 2

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzi:J

    return-void
.end method

.method private final zzp()V
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    .line 53
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzh:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzk:D

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfh;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzix$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzix$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

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

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzc:Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zzn$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzn$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfh;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;-><init>()V

    return-object p1

    nop

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

.method public final zzb()F
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzj:F

    return v0
.end method

.method public final zzc()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzi:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzf:J

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Z
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()Z
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
