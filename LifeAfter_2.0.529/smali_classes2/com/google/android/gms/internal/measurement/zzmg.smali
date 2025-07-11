.class final Lcom/google/android/gms/internal/measurement/zzmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzmg$zzc;,
        Lcom/google/android/gms/internal/measurement/zzmg$zza;,
        Lcom/google/android/gms/internal/measurement/zzmg$zzb;
    }
.end annotation


# static fields
.field static final zza:Z

.field private static final zzb:Lsun/misc/Unsafe;

.field private static final zzc:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzd:Z

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

.field private static final zzg:Z

.field private static final zzh:Z

.field private static final zzi:J

.field private static final zzj:J

.field private static final zzk:J

.field private static final zzl:J

.field private static final zzm:J

.field private static final zzn:J

.field private static final zzo:J

.field private static final zzp:J

.field private static final zzq:J

.field private static final zzr:J

.field private static final zzs:J

.field private static final zzt:J

.field private static final zzu:J

.field private static final zzv:J

.field private static final zzw:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 43
    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [Z

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzmg;->zzb:Lsun/misc/Unsafe;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzmg;->zzc:Ljava/lang/Class;

    .line 45
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzmg;->zzd(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/android/gms/internal/measurement/zzmg;->zzd:Z

    .line 46
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzmg;->zzd(Ljava/lang/Class;)Z

    move-result v7

    sput-boolean v7, Lcom/google/android/gms/internal/measurement/zzmg;->zze:Z

    if-eqz v5, :cond_1

    if-eqz v6, :cond_0

    .line 50
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzmg$zza;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/measurement/zzmg$zza;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    .line 52
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzmg$zzb;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/measurement/zzmg$zzb;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 55
    :goto_0
    sput-object v6, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    const/4 v5, 0x0

    if-nez v6, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zzb()Z

    move-result v7

    .line 58
    :goto_1
    sput-boolean v7, Lcom/google/android/gms/internal/measurement/zzmg;->zzg:Z

    if-nez v6, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza()Z

    move-result v7

    .line 62
    :goto_2
    sput-boolean v7, Lcom/google/android/gms/internal/measurement/zzmg;->zzh:Z

    .line 63
    const-class v7, [B

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)I

    move-result v7

    int-to-long v7, v7

    sput-wide v7, Lcom/google/android/gms/internal/measurement/zzmg;->zzi:J

    .line 64
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)I

    move-result v9

    int-to-long v9, v9

    sput-wide v9, Lcom/google/android/gms/internal/measurement/zzmg;->zzj:J

    .line 65
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)I

    move-result v4

    int-to-long v9, v4

    sput-wide v9, Lcom/google/android/gms/internal/measurement/zzmg;->zzk:J

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)I

    move-result v4

    int-to-long v9, v4

    sput-wide v9, Lcom/google/android/gms/internal/measurement/zzmg;->zzl:J

    .line 67
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/android/gms/internal/measurement/zzmg;->zzm:J

    .line 68
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/android/gms/internal/measurement/zzmg;->zzn:J

    .line 69
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/measurement/zzmg;->zzo:J

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/measurement/zzmg;->zzp:J

    .line 71
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/android/gms/internal/measurement/zzmg;->zzq:J

    .line 72
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/android/gms/internal/measurement/zzmg;->zzr:J

    .line 73
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzs:J

    .line 74
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzt:J

    .line 75
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzu:J

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zze()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v6, :cond_4

    goto :goto_3

    .line 78
    :cond_4
    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_4

    :cond_5
    :goto_3
    const-wide/16 v0, -0x1

    .line 79
    :goto_4
    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzv:J

    const-wide/16 v0, 0x7

    and-long/2addr v0, v7

    long-to-int v1, v0

    .line 80
    sput v1, Lcom/google/android/gms/internal/measurement/zzmg;->zzw:I

    .line 81
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    :cond_6
    sput-boolean v5, Lcom/google/android/gms/internal/measurement/zzmg;->zza:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zza(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 11
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic zza()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zze()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic zza(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JD)V
    .locals 6

    .line 97
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JF)V
    .locals 1

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JI)V
    .locals 1

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JJ)V
    .locals 6

    .line 103
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 105
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    .line 106
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zza(Ljava/lang/Throwable;)V
    .locals 4

    .line 34
    const-class v0, Lcom/google/android/gms/internal/measurement/zzmg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    .line 35
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static zza([BJB)V
    .locals 3

    .line 85
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzmg;->zzi:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zzb(Ljava/lang/Object;J)F
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zzb(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static zzb(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 3
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static zzb()Lsun/misc/Unsafe;
    .locals 1

    .line 28
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    .line 29
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic zzb(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzb(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzc(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static zzc(Ljava/lang/Object;J)I
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zzd(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static zzc(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 87
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 90
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzc(Ljava/lang/Object;JZ)V
    .locals 1

    .line 83
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzc()Z
    .locals 1

    .line 131
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzh:Z

    return v0
.end method

.method static zzd(Ljava/lang/Object;J)J
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zze(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzd(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 92
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 95
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzd()Z
    .locals 1

    .line 132
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzg:Z

    return v0
.end method

.method private static zzd(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 118
    const-class v0, [B

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzmg;->zzc:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    .line 119
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v1

    .line 120
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v1

    .line 121
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v1

    .line 122
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v1

    .line 123
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v1

    .line 124
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v0, v8, v7

    .line 125
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v1

    aput-object v0, v6, v7

    .line 126
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v1
.end method

.method static zze(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zze()Ljava/lang/reflect/Field;
    .locals 3

    .line 17
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 20
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzf(Ljava/lang/Object;J)Z
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 110
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzg(Ljava/lang/Object;J)Z
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 115
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzh(Ljava/lang/Object;J)Z
    .locals 1

    .line 130
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmg;->zzf:Lcom/google/android/gms/internal/measurement/zzmg$zzc;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmg$zzc;->zzc(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method
