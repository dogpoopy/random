.class final Lcom/google/android/gms/internal/play_billing/zzen;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzev;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzev<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/play_billing/zzek;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/play_billing/zzdy;

.field private final zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

.field private final zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

.field private final zzo:Lcom/google/android/gms/internal/play_billing/zzep;

.field private final zzp:Lcom/google/android/gms/internal/play_billing/zzef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzen;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzek;IZ[IIILcom/google/android/gms/internal/play_billing/zzep;Lcom/google/android/gms/internal/play_billing/zzdy;Lcom/google/android/gms/internal/play_billing/zzfm;Lcom/google/android/gms/internal/play_billing/zzcq;Lcom/google/android/gms/internal/play_billing/zzef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzf:I

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/play_billing/zzcq;->zzc(Lcom/google/android/gms/internal/play_billing/zzek;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzi:[I

    iput p9, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzj:I

    iput p10, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzk:I

    iput-object p11, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzo:Lcom/google/android/gms/internal/play_billing/zzep;

    iput-object p12, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzl:Lcom/google/android/gms/internal/play_billing/zzdy;

    iput-object p13, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    iput-object p14, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzg:Lcom/google/android/gms/internal/play_billing/zzek;

    iput-object p15, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzp:Lcom/google/android/gms/internal/play_billing/zzef;

    return-void
.end method

.method private static zzA(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzB(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 9
    invoke-virtual {p2, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 12
    invoke-virtual {p2, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    return-void

    .line 12
    :cond_2
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 14
    invoke-virtual {p3, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object v1

    .line 17
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 18
    invoke-virtual {p3, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v1

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzC(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 10
    invoke-virtual {p2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 13
    invoke-virtual {p2, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzE(Ljava/lang/Object;II)V

    return-void

    .line 13
    :cond_2
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 15
    invoke-virtual {p3, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 19
    invoke-virtual {p3, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    aget p1, p1, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzD(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzp(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzE(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzp(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzF(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzG(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzE(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzI(Ljava/lang/Object;I)Z
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzp(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzcc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzcc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_13

    return v5

    :cond_13
    return v4

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzJ(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzev;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzev;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzL(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzdd;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzdd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzx()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzp(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzN(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzge;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzF(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzd(ILcom/google/android/gms/internal/play_billing/zzcc;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzfn;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzdd;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdd;->zzc:Lcom/google/android/gms/internal/play_billing/zzfn;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzc()Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzf()Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdd;->zzc:Lcom/google/android/gms/internal/play_billing/zzfn;

    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzep;Lcom/google/android/gms/internal/play_billing/zzdy;Lcom/google/android/gms/internal/play_billing/zzfm;Lcom/google/android/gms/internal/play_billing/zzcq;Lcom/google/android/gms/internal/play_billing/zzef;)Lcom/google/android/gms/internal/play_billing/zzen;
    .locals 34

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzeu;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzeu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzeu;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_2
    if-nez v7, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzen;->zza:[I

    move-object/from16 v24, v4

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    goto/16 :goto_11

    :cond_4
    add-int/lit8 v4, v10, 0x1

    .line 7
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_5

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_3

    :cond_5
    shl-int/2addr v4, v9

    or-int/2addr v4, v7

    goto :goto_4

    :cond_6
    move v10, v4

    move v4, v7

    :goto_4
    add-int/lit8 v7, v10, 0x1

    .line 9
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v11, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    add-int/lit8 v10, v10, 0xd

    move v7, v11

    goto :goto_5

    :cond_7
    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    goto :goto_6

    :cond_8
    move v11, v7

    :goto_6
    add-int/lit8 v7, v11, 0x1

    .line 11
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    const/16 v11, 0xd

    :goto_7
    add-int/lit8 v12, v7, 0x1

    .line 12
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v11

    or-int/2addr v10, v7

    add-int/lit8 v11, v11, 0xd

    move v7, v12

    goto :goto_7

    :cond_9
    shl-int/2addr v7, v11

    or-int/2addr v7, v10

    move v10, v7

    goto :goto_8

    :cond_a
    move v12, v7

    :goto_8
    add-int/lit8 v7, v12, 0x1

    .line 13
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    const/16 v12, 0xd

    :goto_9
    add-int/lit8 v13, v7, 0x1

    .line 14
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_b

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v12

    or-int/2addr v11, v7

    add-int/lit8 v12, v12, 0xd

    move v7, v13

    goto :goto_9

    :cond_b
    shl-int/2addr v7, v12

    or-int/2addr v7, v11

    move v11, v7

    goto :goto_a

    :cond_c
    move v13, v7

    :goto_a
    add-int/lit8 v7, v13, 0x1

    .line 15
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_b
    add-int/lit8 v14, v7, 0x1

    .line 16
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_d

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v13

    or-int/2addr v12, v7

    add-int/lit8 v13, v13, 0xd

    move v7, v14

    goto :goto_b

    :cond_d
    shl-int/2addr v7, v13

    or-int/2addr v7, v12

    move v12, v7

    goto :goto_c

    :cond_e
    move v14, v7

    :goto_c
    add-int/lit8 v7, v14, 0x1

    .line 17
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_d
    add-int/lit8 v15, v7, 0x1

    .line 18
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_f

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v14

    or-int/2addr v13, v7

    add-int/lit8 v14, v14, 0xd

    move v7, v15

    goto :goto_d

    :cond_f
    shl-int/2addr v7, v14

    or-int/2addr v7, v13

    move v13, v7

    goto :goto_e

    :cond_10
    move v15, v7

    :goto_e
    add-int/lit8 v7, v15, 0x1

    .line 19
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_f
    add-int/lit8 v16, v7, 0x1

    .line 20
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_11

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v15

    or-int/2addr v14, v7

    add-int/lit8 v15, v15, 0xd

    move/from16 v7, v16

    goto :goto_f

    :cond_11
    shl-int/2addr v7, v15

    or-int/2addr v14, v7

    move/from16 v7, v16

    :cond_12
    add-int/lit8 v15, v7, 0x1

    .line 21
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_14

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_10
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v7, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_10

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v7, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v7, v13

    add-int v14, v16, v14

    add-int v16, v4, v4

    add-int v9, v16, v9

    .line 23
    new-array v14, v14, [I

    move/from16 v25, v7

    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v24, v14

    move v10, v15

    .line 6
    :goto_11
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzeu;->zze()[Ljava/lang/Object;

    move-result-object v11

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzeu;->zza()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    add-int v26, v25, v13

    add-int v13, v12, v12

    mul-int/lit8 v12, v12, 0x3

    .line 26
    new-array v12, v12, [I

    .line 27
    new-array v13, v13, [Ljava/lang/Object;

    move/from16 v16, v9

    move/from16 v17, v25

    move/from16 v18, v26

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_12
    if-ge v10, v2, :cond_36

    add-int/lit8 v21, v10, 0x1

    .line 28
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_16

    and-int/lit16 v10, v10, 0x1fff

    const/16 v22, 0xd

    move/from16 v33, v21

    move/from16 v21, v10

    move/from16 v10, v33

    :goto_13
    add-int/lit8 v23, v10, 0x1

    .line 29
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_15

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v22

    or-int v21, v21, v10

    add-int/lit8 v22, v22, 0xd

    move/from16 v10, v23

    goto :goto_13

    :cond_15
    shl-int v10, v10, v22

    or-int v10, v21, v10

    move/from16 v21, v10

    move/from16 v10, v23

    goto :goto_14

    :cond_16
    move/from16 v33, v21

    move/from16 v21, v10

    move/from16 v10, v33

    :goto_14
    add-int/lit8 v22, v10, 0x1

    .line 30
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_18

    and-int/lit16 v10, v10, 0x1fff

    const/16 v23, 0xd

    move/from16 v33, v22

    move/from16 v22, v10

    move/from16 v10, v33

    :goto_15
    add-int/lit8 v27, v10, 0x1

    .line 31
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_17

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v23

    or-int v22, v22, v10

    add-int/lit8 v23, v23, 0xd

    move/from16 v10, v27

    goto :goto_15

    :cond_17
    shl-int v10, v10, v23

    or-int v10, v22, v10

    move/from16 v3, v27

    goto :goto_16

    :cond_18
    move/from16 v3, v22

    :goto_16
    and-int/lit16 v8, v10, 0x400

    if-eqz v8, :cond_19

    add-int/lit8 v8, v15, 0x1

    .line 32
    aput v9, v24, v15

    move v15, v8

    :cond_19
    and-int/lit16 v8, v10, 0xff

    and-int/lit16 v6, v10, 0x800

    const/16 v5, 0x33

    if-lt v8, v5, :cond_23

    add-int/lit8 v5, v3, 0x1

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v3, v2, :cond_1b

    and-int/lit16 v3, v3, 0x1fff

    const/16 v31, 0xd

    :goto_17
    add-int/lit8 v32, v5, 0x1

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_1a

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v31

    or-int/2addr v3, v2

    add-int/lit8 v31, v31, 0xd

    move/from16 v5, v32

    const v2, 0xd800

    goto :goto_17

    :cond_1a
    shl-int v2, v5, v31

    or-int/2addr v3, v2

    goto :goto_18

    :cond_1b
    move/from16 v32, v5

    :goto_18
    add-int/lit8 v2, v8, -0x33

    const/16 v5, 0x9

    if-eq v2, v5, :cond_1f

    const/16 v5, 0x11

    if-ne v2, v5, :cond_1c

    goto :goto_1a

    :cond_1c
    const/16 v5, 0xc

    if-ne v2, v5, :cond_20

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzeu;->zzc()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1e

    if-eqz v6, :cond_1d

    goto :goto_19

    :cond_1d
    const/4 v6, 0x0

    goto :goto_1c

    :cond_1e
    :goto_19
    add-int/lit8 v2, v16, 0x1

    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v22, v22, 0x1

    .line 37
    aget-object v16, v11, v16

    aput-object v16, v13, v22

    goto :goto_1b

    :cond_1f
    :goto_1a
    const/4 v5, 0x1

    add-int/lit8 v2, v16, 0x1

    .line 34
    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v28, v22, 0x1

    .line 35
    aget-object v5, v11, v16

    aput-object v5, v13, v28

    :goto_1b
    move/from16 v16, v2

    :cond_20
    :goto_1c
    add-int/2addr v3, v3

    .line 38
    aget-object v2, v11, v3

    .line 39
    instance-of v5, v2, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_21

    .line 40
    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_1d

    .line 41
    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    aput-object v2, v11, v3

    :goto_1d
    move/from16 v28, v6

    .line 43
    invoke-virtual {v7, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v2, v5

    add-int/lit8 v3, v3, 0x1

    .line 44
    aget-object v5, v11, v3

    .line 45
    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_22

    .line 46
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 47
    :cond_22
    check-cast v5, Ljava/lang/String;

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 48
    aput-object v5, v11, v3

    .line 49
    :goto_1e
    invoke-virtual {v7, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v3, v5

    move-object/from16 v30, v1

    move v1, v2

    move v5, v3

    move/from16 v6, v28

    move/from16 v29, v32

    const v2, 0xd800

    const/4 v3, 0x0

    move-object/from16 v28, v0

    move v0, v4

    move/from16 v33, v16

    move/from16 v16, v15

    move/from16 v15, v33

    goto/16 :goto_2a

    :cond_23
    move/from16 v27, v2

    add-int/lit8 v2, v16, 0x1

    .line 50
    aget-object v5, v11, v16

    check-cast v5, Ljava/lang/String;

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move/from16 v16, v15

    const/16 v15, 0x9

    if-eq v8, v15, :cond_2d

    const/16 v15, 0x11

    if-ne v8, v15, :cond_24

    goto/16 :goto_22

    :cond_24
    const/16 v15, 0x1b

    if-eq v8, v15, :cond_2c

    const/16 v15, 0x31

    if-ne v8, v15, :cond_25

    add-int/lit8 v15, v2, 0x1

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_21

    :cond_25
    const/16 v15, 0xc

    if-eq v8, v15, :cond_29

    const/16 v15, 0x1e

    if-eq v8, v15, :cond_29

    const/16 v15, 0x2c

    if-ne v8, v15, :cond_26

    goto :goto_1f

    :cond_26
    const/16 v15, 0x32

    if-ne v8, v15, :cond_28

    add-int/lit8 v15, v2, 0x1

    add-int/lit8 v28, v17, 0x1

    .line 55
    aput v9, v24, v17

    div-int/lit8 v17, v9, 0x3

    .line 56
    aget-object v2, v11, v2

    add-int v17, v17, v17

    aput-object v2, v13, v17

    if-eqz v6, :cond_27

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v15, 0x1

    .line 57
    aget-object v15, v11, v15

    aput-object v15, v13, v17

    move v15, v2

    move/from16 v17, v28

    move-object/from16 v28, v0

    goto :goto_24

    :cond_27
    move-object v2, v1

    move/from16 v17, v28

    const/4 v6, 0x0

    move-object/from16 v28, v0

    goto :goto_25

    :cond_28
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_23

    .line 53
    :cond_29
    :goto_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzeu;->zzc()I

    move-result v15

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v15, v0, :cond_2b

    if-eqz v6, :cond_2a

    goto :goto_20

    :cond_2a
    move v15, v2

    const/4 v6, 0x0

    goto :goto_24

    :cond_2b
    :goto_20
    add-int/lit8 v15, v2, 0x1

    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v22, v22, 0x1

    .line 54
    aget-object v2, v11, v2

    aput-object v2, v13, v22

    goto :goto_24

    :cond_2c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v15, v2, 0x1

    .line 65
    :goto_21
    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v22, v22, 0x1

    .line 52
    aget-object v2, v11, v2

    aput-object v2, v13, v22

    goto :goto_24

    :cond_2d
    :goto_22
    move-object/from16 v28, v0

    const/4 v0, 0x1

    .line 50
    div-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v15

    add-int/2addr v15, v0

    .line 51
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    aput-object v22, v13, v15

    :goto_23
    move v15, v2

    :goto_24
    move-object v2, v1

    .line 58
    :goto_25
    invoke-virtual {v7, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    and-int/lit16 v0, v10, 0x1000

    const v5, 0xfffff

    if-eqz v0, :cond_31

    const/16 v0, 0x11

    if-gt v8, v0, :cond_31

    add-int/lit8 v0, v3, 0x1

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd800

    if-lt v3, v5, :cond_2f

    and-int/lit16 v3, v3, 0x1fff

    const/16 v23, 0xd

    :goto_26
    add-int/lit8 v29, v0, 0x1

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_2e

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v23

    or-int/2addr v3, v0

    add-int/lit8 v23, v23, 0xd

    move/from16 v0, v29

    goto :goto_26

    :cond_2e
    shl-int v0, v0, v23

    or-int/2addr v3, v0

    goto :goto_27

    :cond_2f
    move/from16 v29, v0

    :goto_27
    add-int v0, v4, v4

    div-int/lit8 v23, v3, 0x20

    add-int v0, v0, v23

    .line 61
    aget-object v5, v11, v0

    move-object/from16 v30, v2

    .line 62
    instance-of v2, v5, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_30

    .line 63
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_28

    .line 64
    :cond_30
    check-cast v5, Ljava/lang/String;

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 65
    aput-object v5, v11, v0

    :goto_28
    move v0, v4

    .line 66
    invoke-virtual {v7, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v2, v4

    rem-int/lit8 v3, v3, 0x20

    move v5, v2

    const v2, 0xd800

    goto :goto_29

    :cond_31
    move-object/from16 v30, v2

    move v0, v4

    const v2, 0xd800

    move/from16 v29, v3

    const/4 v3, 0x0

    :goto_29
    const/16 v4, 0x12

    if-lt v8, v4, :cond_32

    const/16 v4, 0x31

    if-gt v8, v4, :cond_32

    add-int/lit8 v4, v18, 0x1

    .line 67
    aput v1, v24, v18

    move/from16 v18, v4

    :cond_32
    :goto_2a
    add-int/lit8 v4, v9, 0x1

    .line 68
    aput v21, v12, v9

    add-int/lit8 v9, v4, 0x1

    and-int/lit16 v2, v10, 0x200

    if-eqz v2, :cond_33

    const/high16 v2, 0x20000000

    goto :goto_2b

    :cond_33
    const/4 v2, 0x0

    :goto_2b
    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_34

    const/high16 v10, 0x10000000

    goto :goto_2c

    :cond_34
    const/4 v10, 0x0

    :goto_2c
    if-eqz v6, :cond_35

    const/high16 v6, -0x80000000

    goto :goto_2d

    :cond_35
    const/4 v6, 0x0

    :goto_2d
    shl-int/lit8 v8, v8, 0x14

    or-int/2addr v2, v10

    or-int/2addr v2, v6

    or-int/2addr v2, v8

    or-int/2addr v1, v2

    .line 69
    aput v1, v12, v4

    add-int/lit8 v1, v9, 0x1

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v2, v5

    .line 70
    aput v2, v12, v9

    move v4, v0

    move v9, v1

    move/from16 v2, v27

    move-object/from16 v0, v28

    move/from16 v10, v29

    move-object/from16 v1, v30

    const/4 v3, 0x0

    const v5, 0xd800

    move/from16 v33, v16

    move/from16 v16, v15

    move/from16 v15, v33

    goto/16 :goto_12

    :cond_36
    move-object/from16 v28, v0

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzen;

    .line 71
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/play_billing/zzeu;->zza()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object v21

    .line 72
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/play_billing/zzeu;->zzc()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v27, p2

    move-object/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    move-object/from16 v31, p6

    invoke-direct/range {v16 .. v31}, Lcom/google/android/gms/internal/play_billing/zzen;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzek;IZ[IIILcom/google/android/gms/internal/play_billing/zzep;Lcom/google/android/gms/internal/play_billing/zzdy;Lcom/google/android/gms/internal/play_billing/zzfm;Lcom/google/android/gms/internal/play_billing/zzcq;Lcom/google/android/gms/internal/play_billing/zzef;)V

    return-object v0

    .line 73
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfj;

    const/4 v0, 0x0

    .line 74
    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method

.method private static zzm(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzn(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzo(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzq(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static zzr(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzs(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzt(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzu(I)Lcom/google/android/gms/internal/play_billing/zzdh;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzdh;

    return-object p1
.end method

.method private final zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzev;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzes;->zza()Lcom/google/android/gms/internal/play_billing/zzes;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzes;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzw(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzx(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzy(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzev;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzev;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    const v9, 0xfffff

    const/4 v10, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v11, v2, :cond_1b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v4

    iget-object v5, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    add-int/lit8 v13, v11, 0x2

    .line 2
    aget v14, v5, v11

    .line 3
    aget v5, v5, v13

    and-int v13, v5, v9

    const/16 v15, 0x11

    const/16 v16, 0x1

    if-gt v4, v15, :cond_2

    if-eq v13, v0, :cond_1

    if-ne v13, v9, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v13

    .line 4
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v16, v5

    move v13, v0

    move v15, v1

    goto :goto_2

    :cond_2
    move v13, v0

    move v15, v1

    const/4 v5, 0x0

    :goto_2
    and-int v0, v2, v9

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcv;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcv;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzcv;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcv;->zzW:Lcom/google/android/gms/internal/play_billing/zzcv;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzcv;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_18

    .line 7
    :pswitch_0
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 8
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzek;

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    .line 10
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzt(ILcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzev;)I

    move-result v0

    goto/16 :goto_12

    .line 11
    :pswitch_1
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 12
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto/16 :goto_15

    .line 15
    :pswitch_2
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 16
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    goto/16 :goto_15

    .line 19
    :pswitch_3
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_17

    .line 21
    :pswitch_4
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_16

    .line 23
    :pswitch_5
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 24
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto/16 :goto_15

    .line 27
    :pswitch_6
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 28
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v1

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    goto/16 :goto_15

    .line 31
    :pswitch_7
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzd()I

    move-result v1

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_13

    .line 36
    :pswitch_8
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 37
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzex;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)I

    move-result v0

    goto/16 :goto_12

    .line 39
    :pswitch_9
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 40
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz v2, :cond_4

    .line 41
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzd()I

    move-result v1

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_13

    .line 45
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzv(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_15

    .line 48
    :pswitch_a
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_14

    .line 50
    :pswitch_b
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_16

    .line 52
    :pswitch_c
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_17

    .line 54
    :pswitch_d
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 55
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 57
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto/16 :goto_15

    .line 58
    :pswitch_e
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 59
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 61
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto/16 :goto_15

    .line 62
    :pswitch_f
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 63
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 65
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto/16 :goto_15

    .line 66
    :pswitch_10
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_16

    .line 68
    :pswitch_11
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_17

    .line 70
    :pswitch_12
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzee;

    .line 72
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzed;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_18

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 284
    throw v3

    .line 75
    :pswitch_13
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    .line 77
    sget v2, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v3, v2, :cond_f

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-static {v14, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzt(ILcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzev;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 80
    :pswitch_14
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 82
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 84
    :pswitch_15
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 88
    :pswitch_16
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 90
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 92
    :pswitch_17
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 94
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 96
    :pswitch_18
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zza(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 98
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 100
    :pswitch_19
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 102
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 104
    :pswitch_1a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 107
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 109
    :pswitch_1b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 111
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 113
    :pswitch_1c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 115
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 116
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_4

    .line 117
    :pswitch_1d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 119
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 120
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_4

    .line 121
    :pswitch_1e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 123
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_4

    .line 125
    :pswitch_1f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 127
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_4

    .line 129
    :pswitch_20
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 131
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 132
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_4

    .line 133
    :pswitch_21
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    .line 135
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/2addr v12, v1

    goto/16 :goto_18

    .line 137
    :pswitch_22
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_7
    shl-int/lit8 v2, v14, 0x3

    .line 140
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzj(Ljava/util/List;)I

    move-result v0

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    :goto_6
    mul-int v1, v1, v2

    goto/16 :goto_15

    .line 142
    :pswitch_23
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    shl-int/lit8 v2, v14, 0x3

    .line 145
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzi(Ljava/util/List;)I

    move-result v0

    .line 146
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_6

    .line 147
    :pswitch_24
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 148
    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzex;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_12

    .line 149
    :pswitch_25
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzex;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_12

    .line 151
    :pswitch_26
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 152
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    shl-int/lit8 v2, v14, 0x3

    .line 154
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zza(Ljava/util/List;)I

    move-result v0

    .line 155
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_6

    .line 156
    :pswitch_27
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    .line 159
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzk(Ljava/util/List;)I

    move-result v0

    .line 160
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_6

    .line 161
    :pswitch_28
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    .line 164
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    mul-int v1, v1, v2

    move v2, v1

    const/4 v1, 0x0

    .line 165
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 167
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzd()I

    move-result v3

    .line 168
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    add-int/2addr v12, v2

    goto/16 :goto_18

    .line 169
    :pswitch_29
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    .line 170
    sget v2, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    :goto_9
    const/4 v4, 0x0

    goto :goto_c

    :cond_d
    shl-int/lit8 v3, v14, 0x3

    .line 172
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v3

    mul-int v3, v3, v2

    move v4, v3

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_f

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v14, v5, Lcom/google/android/gms/internal/play_billing/zzdq;

    if-eqz v14, :cond_e

    .line 174
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzdq;

    .line 175
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzdq;->zza()I

    move-result v5

    .line 176
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v14

    add-int/2addr v14, v5

    add-int/2addr v4, v14

    goto :goto_b

    .line 177
    :cond_e
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzu(Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzev;)I

    move-result v5

    add-int/2addr v4, v5

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    :goto_c
    add-int/2addr v12, v4

    goto/16 :goto_18

    .line 178
    :pswitch_2a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v3, 0x0

    goto :goto_11

    :cond_10
    shl-int/lit8 v2, v14, 0x3

    .line 180
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    mul-int v2, v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/play_billing/zzds;

    if-eqz v3, :cond_12

    .line 186
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzds;

    move v3, v2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_14

    .line 187
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzds;->zzf(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz v5, :cond_11

    .line 188
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 189
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzd()I

    move-result v4

    .line 190
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_e

    .line 191
    :cond_11
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzck;->zzv(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_12
    move v3, v2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_14

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz v5, :cond_13

    .line 182
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzd()I

    move-result v4

    .line 184
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_10

    .line 185
    :cond_13
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzck;->zzv(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_14
    :goto_11
    add-int/2addr v12, v3

    goto/16 :goto_18

    .line 192
    :pswitch_2b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_5

    :cond_15
    shl-int/lit8 v1, v14, 0x3

    .line 195
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    goto/16 :goto_12

    .line 196
    :pswitch_2c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzex;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_12

    .line 198
    :pswitch_2d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzex;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto :goto_12

    .line 200
    :pswitch_2e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_5

    :cond_16
    shl-int/lit8 v2, v14, 0x3

    .line 203
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzf(Ljava/util/List;)I

    move-result v0

    .line 204
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_6

    .line 205
    :pswitch_2f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 206
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_5

    :cond_17
    shl-int/lit8 v2, v14, 0x3

    .line 208
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzl(Ljava/util/List;)I

    move-result v0

    .line 209
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto/16 :goto_6

    .line 210
    :pswitch_30
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 211
    sget v1, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_5

    :cond_18
    shl-int/lit8 v1, v14, 0x3

    .line 213
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzg(Ljava/util/List;)I

    move-result v2

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr v0, v2

    goto :goto_12

    .line 216
    :pswitch_31
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 217
    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzex;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto :goto_12

    .line 218
    :pswitch_32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 219
    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzex;->zzd(ILjava/util/List;Z)I

    move-result v0

    :goto_12
    add-int/2addr v12, v0

    goto/16 :goto_18

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v11

    move-wide v9, v3

    move v3, v13

    move v4, v15

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 221
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzek;

    .line 222
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    .line 223
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzt(ILcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzev;)I

    move-result v0

    goto :goto_12

    :pswitch_34
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 225
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 226
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 227
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto/16 :goto_15

    :pswitch_35
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 229
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 230
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 231
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    goto/16 :goto_15

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 233
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_38
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 237
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 239
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto/16 :goto_15

    :pswitch_39
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 241
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 243
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v1

    goto/16 :goto_15

    :pswitch_3a
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 245
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzd()I

    move-result v1

    .line 248
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    :goto_13
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_12

    :pswitch_3b
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 249
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 250
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzex;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)I

    move-result v0

    goto/16 :goto_12

    :pswitch_3c
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 253
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz v2, :cond_19

    .line 254
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzd()I

    move-result v1

    .line 257
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v2

    goto :goto_13

    .line 258
    :cond_19
    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 260
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzck;->zzv(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_15

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 262
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 264
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_40
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 268
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 269
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 270
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto :goto_15

    :pswitch_41
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 272
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 274
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    goto :goto_15

    :pswitch_42
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 276
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 277
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    .line 278
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzck;->zzx(J)I

    move-result v1

    :goto_15
    add-int/2addr v0, v1

    goto/16 :goto_12

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    :goto_16
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_12

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzw(I)I

    move-result v0

    :goto_17
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_12

    :cond_1a
    :goto_18
    add-int/lit8 v11, v11, 0x3

    move v0, v13

    move v1, v15

    const v9, 0xfffff

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 4
    :cond_1b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 285
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfm;->zza(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    if-nez v0, :cond_1c

    return v12

    :cond_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 287
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcu;

    goto :goto_1a

    :goto_19
    throw v3

    :goto_1a
    goto :goto_19

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v2

    .line 2
    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzN(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzdl;->zza(Z)I

    move-result v2

    goto/16 :goto_2

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzn(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_2

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzm(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_1
    add-int/2addr v1, v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzdl;->zza(Z)I

    move-result v2

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    goto :goto_4

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdl;->zzd:[B

    :goto_3
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcu;

    const/4 p1, 0x0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzbp;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzA(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move/from16 v1, p3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    const/16 v16, 0x0

    if-ge v1, v14, :cond_75

    add-int/lit8 v4, v1, 0x1

    .line 2
    aget-byte v1, v15, v1

    if-gez v1, :cond_0

    .line 3
    invoke-static {v1, v15, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzi(I[BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v4, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    goto :goto_1

    :cond_0
    move/from16 v33, v4

    move v4, v1

    move/from16 v1, v33

    :goto_1
    ushr-int/lit8 v9, v4, 0x3

    const/4 v10, 0x3

    if-le v9, v2, :cond_2

    div-int/2addr v3, v10

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zze:I

    if-lt v9, v2, :cond_1

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzf:I

    if-gt v9, v2, :cond_1

    .line 5
    invoke-direct {v0, v9, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzq(II)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 244
    :cond_2
    iget v2, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zze:I

    if-lt v9, v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzf:I

    if-gt v9, v2, :cond_3

    .line 4
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzen;->zzq(II)I

    move-result v2

    :goto_2
    move v3, v2

    const/4 v2, -0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_3
    if-ne v3, v2, :cond_4

    move v3, v1

    move/from16 v19, v5

    move/from16 v25, v6

    move-object/from16 v32, v11

    move-object v5, v12

    move v8, v13

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v27, 0x0

    move v12, v9

    goto/16 :goto_49

    :cond_4
    and-int/lit8 v2, v4, 0x7

    .line 249
    iget-object v10, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    add-int/lit8 v19, v3, 0x1

    .line 6
    aget v8, v10, v19

    move/from16 v19, v4

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v4

    const v17, 0xfffff

    and-int v13, v8, v17

    int-to-long v13, v13

    move/from16 v21, v9

    const/high16 v22, 0x20000000

    const-wide/16 v23, 0x0

    const-string v9, ""

    move-object/from16 v27, v9

    const/16 v9, 0x11

    if-gt v4, v9, :cond_1c

    add-int/lit8 v9, v3, 0x2

    .line 7
    aget v9, v10, v9

    ushr-int/lit8 v10, v9, 0x14

    const/16 v25, 0x1

    shl-int v10, v25, v10

    move/from16 v30, v8

    const v8, 0xfffff

    and-int/2addr v9, v8

    if-eq v9, v6, :cond_7

    if-eq v6, v8, :cond_5

    move/from16 v25, v9

    int-to-long v8, v6

    .line 8
    invoke-virtual {v11, v7, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, v25

    const v8, 0xfffff

    goto :goto_4

    :cond_5
    move v5, v9

    :goto_4
    if-ne v5, v8, :cond_6

    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    int-to-long v8, v5

    .line 9
    invoke-virtual {v11, v7, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    :goto_5
    move/from16 v25, v5

    move v5, v8

    goto :goto_6

    :cond_7
    move/from16 v25, v6

    :goto_6
    packed-switch v4, :pswitch_data_0

    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/4 v1, 0x3

    const/16 v18, -0x1

    const/16 v19, 0x0

    if-ne v2, v1, :cond_1b

    or-int/2addr v5, v10

    .line 10
    invoke-direct {v0, v7, v9}, Lcom/google/android/gms/internal/play_billing/zzen;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v2, v21, 0x3

    or-int/lit8 v13, v2, 0x4

    .line 11
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v2

    move v3, v8

    const v6, 0xfffff

    const/16 v17, 0x0

    move-object v8, v1

    move v14, v9

    move/from16 v6, v21

    const v10, 0xfffff

    move-object v9, v2

    const v2, 0xfffff

    move-object/from16 v10, p2

    move-object v6, v11

    move v11, v4

    move-object v4, v12

    move/from16 v12, p4

    move/from16 p3, v5

    move v5, v14

    move-object/from16 v14, p6

    .line 12
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;[BIIILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v8

    .line 13
    invoke-direct {v0, v7, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v12, v4

    move-object v11, v6

    move v1, v8

    move/from16 v2, v21

    move/from16 v6, v25

    const/4 v8, 0x0

    move v4, v3

    move v3, v5

    move/from16 v5, p3

    goto/16 :goto_0

    :pswitch_0
    if-nez v2, :cond_8

    or-int v8, v5, v10

    .line 14
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v9

    iget-wide v1, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzc(J)J

    move-result-wide v5

    move-object v1, v11

    const/16 v18, -0x1

    move-object/from16 v2, p1

    move/from16 p3, v9

    move/from16 v10, v19

    move v9, v3

    move-wide v3, v13

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v1, p3

    move/from16 v14, p4

    move/from16 v13, p5

    move v5, v8

    move v3, v9

    move v4, v10

    goto/16 :goto_12

    :cond_8
    const/16 v18, -0x1

    move v4, v1

    move v8, v5

    move-object v6, v11

    move-object v1, v12

    const v2, 0xfffff

    const/16 v17, 0x0

    move v5, v3

    move/from16 v3, v19

    goto/16 :goto_15

    :pswitch_1
    move v9, v3

    move/from16 v8, v19

    const/16 v18, -0x1

    if-nez v2, :cond_b

    or-int/2addr v5, v10

    .line 17
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb(I)I

    move-result v2

    .line 19
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_11

    :pswitch_2
    move v9, v3

    move/from16 v8, v19

    const/16 v18, -0x1

    if-nez v2, :cond_b

    .line 20
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 21
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzen;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzdh;

    move-result-object v3

    const/high16 v4, -0x80000000

    and-int v4, v30, v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    .line 22
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/play_billing/zzdh;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    .line 24
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v3

    int-to-long v13, v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzj(ILjava/lang/Object;)V

    goto/16 :goto_11

    :cond_a
    :goto_7
    or-int/2addr v5, v10

    .line 23
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_11

    :pswitch_3
    move v9, v3

    move/from16 v8, v19

    const/4 v3, 0x2

    const/16 v18, -0x1

    if-ne v2, v3, :cond_b

    or-int/2addr v5, v10

    .line 25
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    .line 26
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_4
    move v9, v3

    move/from16 v8, v19

    const/4 v3, 0x2

    const/16 v18, -0x1

    if-ne v2, v3, :cond_b

    or-int/2addr v10, v5

    .line 27
    invoke-direct {v0, v7, v9}, Lcom/google/android/gms/internal/play_billing/zzen;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    .line 28
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v2

    move v4, v1

    move-object v1, v13

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;[BIILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    .line 30
    invoke-direct {v0, v7, v9, v13}, Lcom/google/android/gms/internal/play_billing/zzen;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v8

    move v3, v9

    move v5, v10

    goto/16 :goto_12

    :cond_b
    move v4, v1

    goto/16 :goto_14

    :pswitch_5
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v18, -0x1

    if-ne v2, v1, :cond_1b

    and-int v1, v30, v22

    if-eqz v1, :cond_17

    .line 31
    invoke-static {v15, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v2, :cond_16

    or-int v3, v5, v10

    if-nez v2, :cond_c

    move-object/from16 v6, v27

    .line 253
    iput-object v6, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    move/from16 v22, v3

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 32
    :cond_c
    sget v4, Lcom/google/android/gms/internal/play_billing/zzgb;->zza:I

    .line 33
    array-length v4, v15

    sub-int v5, v4, v1

    or-int v6, v1, v2

    sub-int/2addr v5, v2

    or-int/2addr v5, v6

    if-ltz v5, :cond_15

    add-int v4, v1, v2

    .line 254
    new-array v2, v2, [C

    const/4 v5, 0x0

    :goto_8
    if-ge v1, v4, :cond_d

    .line 34
    aget-byte v6, v15, v1

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(B)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v10, v5, 0x1

    int-to-char v6, v6

    .line 35
    aput-char v6, v2, v5

    move v5, v10

    goto :goto_8

    :cond_d
    :goto_9
    if-ge v1, v4, :cond_14

    add-int/lit8 v6, v1, 0x1

    .line 36
    aget-byte v1, v15, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(B)Z

    move-result v10

    if-eqz v10, :cond_e

    add-int/lit8 v10, v5, 0x1

    int-to-char v1, v1

    .line 40
    aput-char v1, v2, v5

    move v1, v6

    :goto_a
    move v5, v10

    if-ge v1, v4, :cond_d

    .line 41
    aget-byte v6, v15, v1

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(B)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v10, v5, 0x1

    int-to-char v6, v6

    .line 42
    aput-char v6, v2, v5

    goto :goto_a

    :cond_e
    const/16 v10, -0x20

    if-ge v1, v10, :cond_10

    if-ge v6, v4, :cond_f

    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v16, v6, 0x1

    .line 39
    aget-byte v6, v15, v6

    invoke-static {v1, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzc(BB[CI)V

    move v5, v10

    move/from16 v1, v16

    goto :goto_9

    .line 257
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzc()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_10
    const/16 v10, -0x10

    if-ge v1, v10, :cond_12

    add-int/lit8 v10, v4, -0x1

    if-ge v6, v10, :cond_11

    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v16, v6, 0x1

    .line 38
    aget-byte v6, v15, v6

    add-int/lit8 v19, v16, 0x1

    move/from16 v22, v3

    aget-byte v3, v15, v16

    invoke-static {v1, v6, v3, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzb(BBB[CI)V

    move v5, v10

    move/from16 v1, v19

    goto :goto_b

    .line 256
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzc()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_12
    move/from16 v22, v3

    add-int/lit8 v3, v4, -0x2

    if-ge v6, v3, :cond_13

    add-int/lit8 v3, v6, 0x1

    .line 37
    aget-byte v27, v15, v6

    add-int/lit8 v6, v3, 0x1

    aget-byte v28, v15, v3

    add-int/lit8 v3, v6, 0x1

    aget-byte v29, v15, v6

    move/from16 v26, v1

    move-object/from16 v30, v2

    move/from16 v31, v5

    invoke-static/range {v26 .. v31}, Lcom/google/android/gms/internal/play_billing/zzfx;->zza(BBBB[CI)V

    add-int/lit8 v5, v5, 0x2

    move v1, v3

    :goto_b
    move/from16 v3, v22

    goto :goto_9

    .line 255
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzc()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_14
    move/from16 v22, v3

    .line 37
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    move v1, v4

    :goto_c
    move/from16 v5, v22

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    .line 33
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 253
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_17
    move-object/from16 v6, v27

    const/4 v3, 0x0

    .line 43
    invoke-static {v15, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v2, :cond_19

    or-int v4, v5, v10

    if-nez v2, :cond_18

    .line 258
    iput-object v6, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    goto :goto_d

    :cond_18
    new-instance v5, Ljava/lang/String;

    .line 44
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v5, v15, v1, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    add-int/2addr v1, v2

    :goto_d
    move v5, v4

    .line 253
    :goto_e
    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    .line 45
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_11

    .line 258
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :pswitch_6
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/4 v3, 0x0

    const/16 v18, -0x1

    if-nez v2, :cond_1b

    or-int/2addr v5, v10

    .line 46
    invoke-static {v15, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-wide v3, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    cmp-long v2, v3, v23

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    .line 47
    :goto_f
    invoke-static {v7, v13, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_11

    :pswitch_7
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/4 v1, 0x5

    const/16 v18, -0x1

    if-ne v2, v1, :cond_1b

    add-int/lit8 v1, v4, 0x4

    or-int/2addr v5, v10

    .line 48
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v2

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_11

    :pswitch_8
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v18, -0x1

    if-ne v2, v1, :cond_1b

    add-int/lit8 v16, v4, 0x8

    or-int/2addr v10, v5

    .line 49
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v5

    move-object v1, v11

    move-object/from16 v2, p1

    const/16 v19, 0x0

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_10

    :pswitch_9
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/16 v18, -0x1

    const/16 v19, 0x0

    if-nez v2, :cond_1b

    or-int/2addr v5, v10

    .line 50
    invoke-static {v15, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 51
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_11

    :pswitch_a
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/16 v18, -0x1

    const/16 v19, 0x0

    if-nez v2, :cond_1b

    or-int/2addr v10, v5

    .line 52
    invoke-static {v15, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v16

    iget-wide v5, v12, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v13

    .line 53
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_10
    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v8

    move v3, v9

    move v5, v10

    move/from16 v1, v16

    goto :goto_12

    :pswitch_b
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/4 v1, 0x5

    const/16 v18, -0x1

    const/16 v19, 0x0

    if-ne v2, v1, :cond_1b

    add-int/lit8 v1, v4, 0x4

    or-int/2addr v5, v10

    .line 54
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 55
    invoke-static {v7, v13, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzp(Ljava/lang/Object;JF)V

    goto :goto_11

    :pswitch_c
    move v4, v1

    move v9, v3

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    if-ne v2, v1, :cond_1b

    add-int/lit8 v1, v4, 0x8

    or-int/2addr v5, v10

    .line 56
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 57
    invoke-static {v7, v13, v14, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzo(Ljava/lang/Object;JD)V

    :goto_11
    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v8

    move v3, v9

    :goto_12
    move/from16 v2, v21

    move/from16 v6, v25

    :goto_13
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_1b
    :goto_14
    move v3, v8

    move-object v6, v11

    move-object v1, v12

    const v2, 0xfffff

    const/16 v17, 0x0

    move v8, v5

    move v5, v9

    :goto_15
    move/from16 v27, v5

    move-object/from16 v32, v6

    move/from16 v19, v8

    move/from16 v12, v21

    move/from16 v8, p5

    move-object v5, v1

    move/from16 v33, v4

    move v4, v3

    move/from16 v3, v33

    goto/16 :goto_49

    :cond_1c
    move/from16 v25, v6

    move/from16 v30, v8

    move-object v6, v11

    move-object/from16 v8, v27

    const/16 v17, 0x0

    const/16 v18, -0x1

    move v11, v1

    move-object v1, v12

    move/from16 v12, v21

    move/from16 v33, v5

    move v5, v3

    move/from16 v3, v19

    move/from16 v19, v33

    const/16 v9, 0x1b

    const/16 v21, 0xa

    if-ne v4, v9, :cond_20

    const/4 v9, 0x2

    if-ne v2, v9, :cond_1f

    .line 58
    invoke-virtual {v6, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzdk;

    .line 59
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzc()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 60
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->size()I

    move-result v4

    if-nez v4, :cond_1d

    const/16 v4, 0xa

    goto :goto_16

    :cond_1d
    add-int v21, v4, v4

    move/from16 v4, v21

    .line 61
    :goto_16
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v2

    .line 62
    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1e
    move-object v13, v2

    .line 63
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v8

    const v2, 0xfffff

    move v9, v3

    move-object/from16 v10, p2

    move v4, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 64
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzbq;->zze(Lcom/google/android/gms/internal/play_billing/zzev;I[BIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v8

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v12, v1

    move v2, v4

    move-object v11, v6

    move v1, v8

    move/from16 v6, v25

    const/4 v8, 0x0

    move v4, v3

    move v3, v5

    :goto_17
    move/from16 v5, v19

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v32, v6

    move/from16 v6, p4

    move/from16 v33, v5

    move-object v5, v1

    move/from16 v1, v33

    goto/16 :goto_40

    :cond_20
    const/16 v9, 0x31

    if-gt v4, v9, :cond_64

    move/from16 v9, v30

    int-to-long v9, v9

    move/from16 v27, v5

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 65
    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzdk;

    .line 66
    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzc()Z

    move-result v22

    if-nez v22, :cond_22

    .line 67
    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->size()I

    move-result v22

    if-nez v22, :cond_21

    move-object/from16 v30, v6

    const/16 v6, 0xa

    goto :goto_18

    :cond_21
    add-int v21, v22, v22

    move-object/from16 v30, v6

    move/from16 v6, v21

    .line 68
    :goto_18
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 69
    invoke-virtual {v6, v7, v13, v14, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_19

    :cond_22
    move-object/from16 v30, v6

    :goto_19
    move-object v13, v5

    packed-switch v4, :pswitch_data_1

    move/from16 v14, p4

    move-object v8, v1

    move v10, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const/4 v1, 0x3

    const v9, 0xfffff

    if-ne v2, v1, :cond_61

    and-int/lit8 v1, v10, -0x8

    or-int/lit8 v20, v1, 0x4

    .line 70
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v21

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v5, v20

    move-object/from16 v6, p6

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzc(Lcom/google/android/gms/internal/play_billing/zzev;[BIIILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-object v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    .line 72
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    :pswitch_d
    const/4 v4, 0x2

    if-ne v2, v4, :cond_25

    .line 76
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdz;

    .line 77
    invoke-static {v15, v11, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v4, v2

    :goto_1a
    if-ge v2, v4, :cond_23

    .line 78
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-wide v5, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 79
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzc(J)J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    goto :goto_1a

    :cond_23
    if-ne v2, v4, :cond_24

    move/from16 v14, p4

    move-object v8, v1

    move v1, v2

    move v10, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    goto/16 :goto_36

    .line 259
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_25
    if-nez v2, :cond_26

    .line 80
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdz;

    .line 81
    invoke-static {v15, v11, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 82
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzc(J)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    move/from16 v5, p4

    move/from16 v14, v27

    :goto_1b
    if-ge v2, v5, :cond_2a

    .line 83
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v4

    iget v6, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v3, v6, :cond_2a

    .line 84
    invoke-static {v15, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-wide v8, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzc(J)J

    move-result-wide v8

    .line 85
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    goto :goto_1b

    :cond_26
    move/from16 v14, p4

    move-object v8, v1

    move v10, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    goto/16 :goto_2b

    :pswitch_e
    move/from16 v5, p4

    move/from16 v14, v27

    const/4 v4, 0x2

    if-ne v2, v4, :cond_29

    .line 86
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzde;

    .line 87
    invoke-static {v15, v11, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v4, v2

    :goto_1c
    if-ge v2, v4, :cond_27

    .line 88
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v6, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 89
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb(I)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/play_billing/zzde;->zzh(I)V

    goto :goto_1c

    :cond_27
    if-ne v2, v4, :cond_28

    goto :goto_1e

    .line 260
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_29
    if-nez v2, :cond_2b

    .line 90
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzde;

    .line 91
    invoke-static {v15, v11, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 92
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb(I)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzde;->zzh(I)V

    :goto_1d
    if-ge v2, v5, :cond_2a

    .line 93
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v4

    iget v6, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v3, v6, :cond_2a

    .line 94
    invoke-static {v15, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb(I)I

    move-result v4

    .line 95
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzde;->zzh(I)V

    goto :goto_1d

    :cond_2a
    :goto_1e
    move-object v8, v1

    move v1, v2

    move v10, v3

    move v7, v14

    move-object/from16 v32, v30

    const v9, 0xfffff

    move v14, v5

    goto/16 :goto_3f

    :cond_2b
    move-object v8, v1

    move v10, v3

    move v7, v14

    move-object/from16 v32, v30

    goto/16 :goto_25

    :pswitch_f
    move/from16 v5, p4

    move/from16 v14, v27

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2c

    .line 96
    invoke-static {v15, v11, v13, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzf([BILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    move-object v10, v1

    move v9, v3

    move v8, v5

    move-object/from16 v32, v30

    goto :goto_1f

    :cond_2c
    if-nez v2, :cond_34

    move-object v10, v1

    move v1, v3

    move-object/from16 v2, p2

    move v9, v3

    move v3, v11

    move/from16 v4, p4

    move v8, v5

    move-object v5, v13

    move-object/from16 v32, v30

    move-object/from16 v6, p6

    .line 97
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzj(I[BIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    .line 98
    :goto_1f
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzdh;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 99
    sget v4, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    if-eqz v1, :cond_32

    .line 100
    instance-of v4, v13, Ljava/util/RandomAccess;

    if-eqz v4, :cond_30

    .line 101
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move/from16 p3, v2

    move-object/from16 v2, v16

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_20
    if-ge v5, v4, :cond_2f

    .line 102
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzdh;->zza(I)Z

    move-result v21

    if-eqz v21, :cond_2e

    if-eq v5, v6, :cond_2d

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 105
    :cond_2e
    invoke-static {v7, v12, v0, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzfm;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    :goto_21
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_20

    :cond_2f
    if-eq v6, v4, :cond_33

    .line 106
    invoke-interface {v13, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_23

    :cond_30
    move/from16 p3, v2

    .line 107
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v16

    :cond_31
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 109
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdh;->zza(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 110
    invoke-static {v7, v12, v4, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzfm;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    :cond_32
    move/from16 p3, v2

    :cond_33
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v7, v14

    :goto_24
    move v14, v8

    move-object v8, v10

    move v10, v9

    goto/16 :goto_36

    :cond_34
    move-object/from16 v32, v30

    move-object/from16 v0, p0

    move-object v8, v1

    move v10, v3

    move v7, v14

    :goto_25
    const v9, 0xfffff

    move v14, v5

    goto/16 :goto_3e

    :pswitch_10
    move/from16 v8, p4

    move-object v10, v1

    move v9, v3

    move/from16 v14, v27

    move-object/from16 v32, v30

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3c

    .line 112
    invoke-static {v15, v11, v10}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v1, :cond_3b

    .line 113
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_3a

    if-nez v1, :cond_35

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 115
    :cond_35
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzcc;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    :goto_26
    add-int/2addr v0, v1

    :goto_27
    if-ge v0, v8, :cond_39

    .line 116
    invoke-static {v15, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v9, v2, :cond_39

    .line 117
    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v1, :cond_38

    .line 118
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_37

    if-nez v1, :cond_36

    .line 264
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 119
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 120
    :cond_36
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzcc;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 264
    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v0

    throw v0

    .line 263
    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v0

    throw v0

    :cond_39
    move v1, v0

    move v7, v14

    move-object/from16 v0, p0

    goto :goto_24

    .line 262
    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v0

    throw v0

    .line 261
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v0

    throw v0

    :pswitch_11
    move/from16 v8, p4

    move-object v10, v1

    move v9, v3

    move/from16 v14, v27

    move-object/from16 v32, v30

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3c

    move-object/from16 v0, p0

    .line 121
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    move v6, v8

    move-object v8, v1

    move v5, v9

    const v4, 0xfffff

    move-object v3, v10

    move-object/from16 v10, p2

    move v1, v11

    move v2, v12

    move/from16 v12, p4

    move v7, v14

    move-object/from16 v14, p6

    .line 122
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzbq;->zze(Lcom/google/android/gms/internal/play_billing/zzev;I[BIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v8

    move v12, v2

    move v10, v5

    move v14, v6

    move v1, v8

    const v9, 0xfffff

    move-object v8, v3

    goto/16 :goto_3f

    :cond_3c
    move-object/from16 v0, p0

    move v7, v14

    move v14, v8

    move-object v8, v10

    move v10, v9

    goto/16 :goto_2b

    :pswitch_12
    move/from16 v6, p4

    move v5, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const v4, 0xfffff

    move-object v3, v1

    move v1, v11

    const/4 v11, 0x2

    if-ne v2, v11, :cond_49

    const-wide/32 v20, 0x20000000

    and-long v9, v9, v20

    cmp-long v2, v9, v23

    if-nez v2, :cond_41

    .line 134
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v9, :cond_40

    if-nez v9, :cond_3d

    .line 135
    invoke-interface {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 142
    :cond_3d
    new-instance v10, Ljava/lang/String;

    .line 136
    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v2, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 137
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/2addr v2, v9

    :goto_29
    if-ge v2, v6, :cond_56

    .line 138
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v9

    iget v10, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v5, v10, :cond_56

    .line 139
    invoke-static {v15, v9, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v9, :cond_3f

    if-nez v9, :cond_3e

    .line 140
    invoke-interface {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3e
    new-instance v10, Ljava/lang/String;

    .line 141
    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v2, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 270
    :cond_3f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    .line 269
    :cond_40
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    .line 123
    :cond_41
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v9, :cond_48

    if-nez v9, :cond_42

    .line 124
    invoke-interface {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    move v10, v2

    goto :goto_2a

    :cond_42
    add-int v10, v2, v9

    .line 125
    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/play_billing/zzgb;->zze([BII)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 266
    new-instance v11, Ljava/lang/String;

    .line 126
    sget-object v14, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v2, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 127
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    :goto_2a
    if-ge v10, v6, :cond_46

    .line 128
    invoke-static {v15, v10, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v5, v9, :cond_46

    .line 129
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v10

    iget v2, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ltz v2, :cond_45

    if-nez v2, :cond_43

    .line 130
    invoke-interface {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_43
    add-int v9, v10, v2

    .line 131
    invoke-static {v15, v10, v9}, Lcom/google/android/gms/internal/play_billing/zzgb;->zze([BII)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 268
    new-instance v11, Ljava/lang/String;

    .line 132
    sget-object v14, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v10, v2, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 133
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    move v10, v9

    goto :goto_2a

    .line 268
    :cond_44
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzc()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    .line 267
    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_46
    move v11, v1

    move-object v8, v3

    move v14, v6

    move v1, v10

    const v9, 0xfffff

    move v10, v5

    goto/16 :goto_3f

    .line 266
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzc()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    .line 265
    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzd()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_49
    move v11, v1

    move-object v8, v3

    move v10, v5

    move v14, v6

    :goto_2b
    const v9, 0xfffff

    goto/16 :goto_3e

    :pswitch_13
    move/from16 v6, p4

    move v5, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const v4, 0xfffff

    const/4 v8, 0x2

    move-object v3, v1

    move v1, v11

    if-ne v2, v8, :cond_4d

    .line 143
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzbr;

    .line 144
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v8, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v8, v2

    :goto_2c
    if-ge v2, v8, :cond_4b

    .line 145
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-wide v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    cmp-long v11, v9, v23

    if-eqz v11, :cond_4a

    const/4 v9, 0x1

    goto :goto_2d

    :cond_4a
    const/4 v9, 0x0

    .line 146
    :goto_2d
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/play_billing/zzbr;->zze(Z)V

    goto :goto_2c

    :cond_4b
    if-ne v2, v8, :cond_4c

    goto/16 :goto_35

    .line 271
    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_4d
    if-nez v2, :cond_49

    .line 147
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzbr;

    .line 148
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-wide v8, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    cmp-long v10, v8, v23

    if-eqz v10, :cond_4e

    const/4 v8, 0x1

    goto :goto_2e

    :cond_4e
    const/4 v8, 0x0

    .line 149
    :goto_2e
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzbr;->zze(Z)V

    :goto_2f
    if-ge v2, v6, :cond_56

    .line 150
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v8

    iget v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v5, v9, :cond_56

    .line 151
    invoke-static {v15, v8, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-wide v8, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    cmp-long v10, v8, v23

    if-eqz v10, :cond_4f

    const/4 v8, 0x1

    goto :goto_30

    :cond_4f
    const/4 v8, 0x0

    .line 152
    :goto_30
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzbr;->zze(Z)V

    goto :goto_2f

    :pswitch_14
    move/from16 v6, p4

    move v5, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const v4, 0xfffff

    const/4 v8, 0x2

    move-object v3, v1

    move v1, v11

    if-ne v2, v8, :cond_52

    .line 153
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzde;

    .line 154
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v8, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v8, v2

    :goto_31
    if-ge v2, v8, :cond_50

    .line 155
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v9

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/play_billing/zzde;->zzh(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_31

    :cond_50
    if-ne v2, v8, :cond_51

    goto/16 :goto_35

    .line 272
    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_52
    const/4 v8, 0x5

    if-ne v2, v8, :cond_49

    add-int/lit8 v2, v1, 0x4

    .line 156
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzde;

    .line 157
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzde;->zzh(I)V

    :goto_32
    if-ge v2, v6, :cond_56

    .line 158
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v8

    iget v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v5, v9, :cond_56

    .line 159
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzde;->zzh(I)V

    add-int/lit8 v2, v8, 0x4

    goto :goto_32

    :pswitch_15
    move/from16 v6, p4

    move v5, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const v4, 0xfffff

    const/4 v8, 0x2

    move-object v3, v1

    move v1, v11

    if-ne v2, v8, :cond_55

    .line 160
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdz;

    .line 161
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v8, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v8, v2

    :goto_33
    if-ge v2, v8, :cond_53

    .line 162
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_33

    :cond_53
    if-ne v2, v8, :cond_54

    goto :goto_35

    .line 273
    :cond_54
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_55
    const/4 v8, 0x1

    if-ne v2, v8, :cond_49

    add-int/lit8 v2, v1, 0x8

    .line 163
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdz;

    .line 164
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    :goto_34
    if-ge v2, v6, :cond_56

    .line 165
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v8

    iget v9, v3, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v5, v9, :cond_56

    .line 166
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    add-int/lit8 v2, v8, 0x8

    goto :goto_34

    :pswitch_16
    move/from16 v6, p4

    move v5, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const v4, 0xfffff

    const/4 v8, 0x2

    move-object v3, v1

    move v1, v11

    if-ne v2, v8, :cond_57

    .line 167
    invoke-static {v15, v1, v13, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzf([BILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    :cond_56
    :goto_35
    move v11, v1

    move v1, v2

    move-object v8, v3

    move v10, v5

    move v14, v6

    :goto_36
    const v9, 0xfffff

    goto/16 :goto_3f

    :cond_57
    if-nez v2, :cond_49

    move v11, v1

    move v1, v5

    move-object/from16 v2, p2

    move-object v8, v3

    move v3, v11

    const v9, 0xfffff

    move/from16 v4, p4

    move v10, v5

    move-object v5, v13

    move v14, v6

    move-object/from16 v6, p6

    .line 168
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzj(I[BIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    goto/16 :goto_3f

    :pswitch_17
    move/from16 v14, p4

    move-object v8, v1

    move v10, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const/4 v1, 0x2

    const v9, 0xfffff

    if-ne v2, v1, :cond_5a

    .line 169
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdz;

    .line 170
    invoke-static {v15, v11, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v2, v1

    :goto_37
    if-ge v1, v2, :cond_58

    .line 171
    invoke-static {v15, v1, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 172
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    goto :goto_37

    :cond_58
    if-ne v1, v2, :cond_59

    goto/16 :goto_3f

    .line 274
    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_5a
    if-nez v2, :cond_61

    .line 173
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdz;

    .line 174
    invoke-static {v15, v11, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-wide v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 175
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    :goto_38
    if-ge v1, v14, :cond_62

    .line 176
    invoke-static {v15, v1, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v10, v3, :cond_62

    .line 177
    invoke-static {v15, v2, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-wide v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 178
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzdz;->zzf(J)V

    goto :goto_38

    :pswitch_18
    move/from16 v14, p4

    move-object v8, v1

    move v10, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const/4 v1, 0x2

    const v9, 0xfffff

    if-ne v2, v1, :cond_5d

    .line 179
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcw;

    .line 180
    invoke-static {v15, v11, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v2, v1

    :goto_39
    if-ge v1, v2, :cond_5b

    .line 181
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 182
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/play_billing/zzcw;->zze(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_39

    :cond_5b
    if-ne v1, v2, :cond_5c

    goto/16 :goto_3f

    .line 275
    :cond_5c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_5d
    const/4 v1, 0x5

    if-ne v2, v1, :cond_61

    add-int/lit8 v1, v11, 0x4

    .line 183
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcw;

    .line 184
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 185
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzcw;->zze(F)V

    :goto_3a
    if-ge v1, v14, :cond_62

    .line 186
    invoke-static {v15, v1, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v10, v3, :cond_62

    .line 187
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 188
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzcw;->zze(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_3a

    :pswitch_19
    move/from16 v14, p4

    move-object v8, v1

    move v10, v3

    move/from16 v7, v27

    move-object/from16 v32, v30

    const/4 v1, 0x2

    const v9, 0xfffff

    if-ne v2, v1, :cond_60

    .line 189
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcm;

    .line 190
    invoke-static {v15, v11, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    add-int/2addr v2, v1

    :goto_3b
    if-ge v1, v2, :cond_5e

    .line 191
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 192
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzcm;->zze(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3b

    :cond_5e
    if-ne v1, v2, :cond_5f

    goto :goto_3f

    .line 276
    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzg()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_60
    const/4 v1, 0x1

    if-ne v2, v1, :cond_61

    add-int/lit8 v1, v11, 0x8

    .line 193
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcm;

    .line 194
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 195
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzcm;->zze(D)V

    :goto_3c
    if-ge v1, v14, :cond_62

    .line 196
    invoke-static {v15, v1, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v10, v3, :cond_62

    .line 197
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 198
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzcm;->zze(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_3c

    :goto_3d
    if-ge v1, v14, :cond_62

    .line 73
    invoke-static {v15, v1, v8}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v3

    iget v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-ne v10, v2, :cond_62

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v20

    move-object/from16 v6, p6

    .line 74
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzc(Lcom/google/android/gms/internal/play_billing/zzev;[BIIILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-object v2, v8, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    .line 75
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_61
    :goto_3e
    move v1, v11

    :cond_62
    :goto_3f
    if-eq v1, v11, :cond_63

    move/from16 v13, p5

    move v3, v7

    move v4, v10

    move v2, v12

    move/from16 v5, v19

    move/from16 v6, v25

    move-object/from16 v11, v32

    move-object/from16 v7, p1

    move-object v12, v8

    goto/16 :goto_13

    :cond_63
    move v3, v1

    move/from16 v27, v7

    move-object v5, v8

    move v4, v10

    move-object/from16 v7, p1

    move/from16 v8, p5

    goto/16 :goto_49

    :cond_64
    move v7, v5

    move-object/from16 v32, v6

    move/from16 v9, v30

    move/from16 v6, p4

    move-object v5, v1

    const/16 v1, 0x32

    if-ne v4, v1, :cond_67

    const/4 v1, 0x2

    if-ne v2, v1, :cond_66

    .line 188
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 277
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzen;->zzw(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v7, p1

    .line 278
    invoke-virtual {v1, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 279
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzee;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzee;->zze()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzee;->zza()Lcom/google/android/gms/internal/play_billing/zzee;

    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzee;->zzb()Lcom/google/android/gms/internal/play_billing/zzee;

    move-result-object v4

    .line 281
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/zzef;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v1, v7, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 283
    :cond_65
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzed;

    .line 284
    throw v16

    :cond_66
    move v1, v7

    move-object/from16 v7, p1

    :goto_40
    move/from16 v8, p5

    move/from16 v27, v1

    move v4, v3

    move v3, v11

    goto/16 :goto_49

    :cond_67
    move v1, v7

    move-object/from16 v7, p1

    add-int/lit8 v21, v1, 0x2

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 199
    aget v10, v10, v21

    const v20, 0xfffff

    and-int v10, v10, v20

    move/from16 v21, v11

    int-to-long v10, v10

    packed-switch v4, :pswitch_data_2

    :cond_68
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    goto/16 :goto_47

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_68

    and-int/lit8 v2, v3, -0x8

    or-int/lit8 v13, v2, 0x4

    .line 200
    invoke-direct {v0, v7, v12, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 201
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v9

    move-object v8, v2

    move-object/from16 v10, p2

    move/from16 v4, v21

    move v11, v4

    move v6, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 202
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;[BIIILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v8

    .line 203
    invoke-direct {v0, v7, v6, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v27, v1

    move v12, v6

    move v1, v8

    goto/16 :goto_43

    :pswitch_1b
    move/from16 v4, v21

    if-nez v2, :cond_6b

    .line 204
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-wide v8, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 205
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzc(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 206
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_1c
    move/from16 v4, v21

    if-nez v2, :cond_6b

    .line 207
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v8, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 208
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 209
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_1d
    move/from16 v4, v21

    if-nez v2, :cond_6b

    .line 210
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget v8, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 211
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzdh;

    move-result-object v9

    if-eqz v9, :cond_6a

    .line 212
    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/play_billing/zzdh;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_69

    goto :goto_41

    .line 215
    :cond_69
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v6

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzj(ILjava/lang/Object;)V

    goto :goto_42

    .line 213
    :cond_6a
    :goto_41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 214
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_1e
    move/from16 v4, v21

    const/4 v8, 0x2

    if-ne v2, v8, :cond_6b

    .line 216
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v2

    iget-object v8, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zzc:Ljava/lang/Object;

    .line 217
    invoke-virtual {v6, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 218
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_42
    move/from16 v27, v1

    move v1, v2

    :goto_43
    move/from16 v33, v4

    move v4, v3

    move/from16 v3, v33

    goto/16 :goto_48

    :pswitch_1f
    move/from16 v4, v21

    const/4 v8, 0x2

    if-ne v2, v8, :cond_6b

    .line 219
    invoke-direct {v0, v7, v12, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v8

    .line 220
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v2

    move v9, v1

    const v10, 0xfffff

    move-object v1, v8

    move v11, v3

    move-object/from16 v3, p2

    move v13, v4

    move-object v14, v5

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 221
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;[BIILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    .line 222
    invoke-direct {v0, v7, v12, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzen;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v27, v9

    move v4, v11

    move v3, v13

    move-object v5, v14

    goto/16 :goto_48

    :cond_6b
    move/from16 v27, v1

    move/from16 v33, v4

    move v4, v3

    move/from16 v3, v33

    goto/16 :goto_47

    :pswitch_20
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    const/4 v1, 0x2

    if-ne v2, v1, :cond_70

    .line 223
    invoke-static {v15, v3, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    if-nez v2, :cond_6c

    .line 224
    invoke-virtual {v6, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_45

    :cond_6c
    and-int v8, v9, v22

    add-int v9, v1, v2

    if-eqz v8, :cond_6e

    .line 225
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/play_billing/zzgb;->zze([BII)Z

    move-result v8

    if-eqz v8, :cond_6d

    goto :goto_44

    .line 285
    :cond_6d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzc()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    .line 225
    :cond_6e
    :goto_44
    new-instance v8, Ljava/lang/String;

    move/from16 p3, v9

    .line 226
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v15, v1, v2, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 227
    invoke-virtual {v6, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v1, p3

    .line 228
    :goto_45
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_48

    :pswitch_21
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    if-nez v2, :cond_70

    .line 229
    invoke-static {v15, v3, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-wide v8, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    cmp-long v2, v8, v23

    if-eqz v2, :cond_6f

    const/16 v29, 0x1

    goto :goto_46

    :cond_6f
    const/16 v29, 0x0

    .line 230
    :goto_46
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_48

    :pswitch_22
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    const/4 v1, 0x5

    if-ne v2, v1, :cond_70

    add-int/lit8 v1, v3, 0x4

    .line 232
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 233
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_48

    :pswitch_23
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    const/4 v1, 0x1

    if-ne v2, v1, :cond_70

    add-int/lit8 v1, v3, 0x8

    .line 234
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 235
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_48

    :pswitch_24
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    if-nez v2, :cond_70

    .line 236
    invoke-static {v15, v3, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzh([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget v2, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zza:I

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 238
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :pswitch_25
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    if-nez v2, :cond_70

    .line 239
    invoke-static {v15, v3, v5}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzk([BILcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    iget-wide v8, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zzb:J

    .line 240
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 241
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :pswitch_26
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    const/4 v1, 0x5

    if-ne v2, v1, :cond_70

    add-int/lit8 v1, v3, 0x4

    .line 242
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 243
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 244
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :pswitch_27
    move/from16 v27, v1

    move v4, v3

    move/from16 v3, v21

    const/4 v1, 0x1

    if-ne v2, v1, :cond_70

    add-int/lit8 v1, v3, 0x8

    .line 245
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzn([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 246
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v6, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 247
    invoke-virtual {v6, v7, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :cond_70
    :goto_47
    move v1, v3

    :goto_48
    if-eq v1, v3, :cond_71

    move/from16 v14, p4

    move/from16 v13, p5

    move v2, v12

    move/from16 v6, v25

    move/from16 v3, v27

    move-object/from16 v11, v32

    const/4 v8, 0x0

    move-object v12, v5

    goto/16 :goto_17

    :cond_71
    move/from16 v8, p5

    move v3, v1

    :goto_49
    if-ne v4, v8, :cond_72

    if-eqz v8, :cond_72

    goto :goto_4b

    .line 297
    :cond_72
    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    if-eqz v1, :cond_74

    iget-object v1, v5, Lcom/google/android/gms/internal/play_billing/zzbp;->zzd:Lcom/google/android/gms/internal/play_billing/zzcp;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    if-eq v1, v2, :cond_74

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzg:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 250
    invoke-virtual {v1, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzcp;->zzb(Lcom/google/android/gms/internal/play_billing/zzek;I)Lcom/google/android/gms/internal/play_billing/zzdb;

    move-result-object v1

    if-nez v1, :cond_73

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v6

    move v1, v4

    move-object/from16 v2, p2

    move v9, v4

    move/from16 v4, p4

    move-object v5, v6

    move-object/from16 v6, p6

    .line 252
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzg(I[BIILcom/google/android/gms/internal/play_billing/zzfn;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    goto :goto_4a

    .line 298
    :cond_73
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzda;

    .line 299
    throw v16

    :cond_74
    move v9, v4

    .line 248
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v5

    move v1, v9

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzg(I[BIILcom/google/android/gms/internal/play_billing/zzfn;Lcom/google/android/gms/internal/play_billing/zzbp;)I

    move-result v1

    :goto_4a
    move/from16 v14, p4

    move v13, v8

    move v4, v9

    move v2, v12

    move/from16 v5, v19

    move/from16 v6, v25

    move/from16 v3, v27

    move-object/from16 v11, v32

    const/4 v8, 0x0

    move-object/from16 v12, p6

    goto/16 :goto_0

    :cond_75
    move/from16 v19, v5

    move/from16 v25, v6

    move-object/from16 v32, v11

    move v8, v13

    move v3, v1

    :goto_4b
    move/from16 v2, v19

    move/from16 v1, v25

    const v5, 0xfffff

    if-eq v1, v5, :cond_76

    int-to-long v9, v1

    move-object/from16 v1, v32

    .line 286
    invoke-virtual {v1, v7, v9, v10, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_76
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzj:I

    :goto_4c
    iget v2, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzk:I

    if-ge v1, v2, :cond_79

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzi:[I

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 287
    aget v2, v2, v1

    .line 288
    aget v6, v6, v2

    .line 289
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v6

    and-int/2addr v6, v5

    int-to-long v9, v6

    .line 290
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_77

    goto :goto_4d

    .line 291
    :cond_77
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzdh;

    move-result-object v9

    if-nez v9, :cond_78

    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 292
    :cond_78
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzee;

    .line 293
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 294
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzed;

    .line 295
    throw v16

    :cond_79
    if-nez v8, :cond_7b

    move/from16 v1, p4

    if-ne v3, v1, :cond_7a

    goto :goto_4e

    .line 296
    :cond_7a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zze()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    throw v1

    :cond_7b
    move/from16 v1, p4

    if-gt v3, v1, :cond_7c

    if-ne v4, v8, :cond_7c

    :goto_4e
    return v3

    .line 297
    :cond_7c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zze()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v1

    goto :goto_50

    :goto_4f
    throw v1

    :goto_50
    goto :goto_4f

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzg:Lcom/google/android/gms/internal/play_billing/zzek;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzj()Lcom/google/android/gms/internal/play_billing/zzdd;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzdd;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdd;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzu(I)V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzdd;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzs()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 9
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 10
    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzee;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzee;->zzc()V

    .line 11
    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzl:Lcom/google/android/gms/internal/play_billing/zzdy;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdy;->zza(Ljava/lang/Object;J)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 6
    aget v2, v2, v1

    .line 7
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzev;->zzf(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzev;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzg(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzcq;->zzb(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzA(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v2

    .line 3
    aget v4, v4, v1

    int-to-long v5, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-direct {p0, p2, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzE(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-direct {p0, p2, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzE(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_4
    sget v2, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 14
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzef;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzl:Lcom/google/android/gms/internal/play_billing/zzdy;

    .line 16
    invoke-virtual {v2, p1, p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdy;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 18
    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzr(Ljava/lang/Object;JJ)V

    .line 20
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 21
    :pswitch_8
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    .line 23
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_9
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzr(Ljava/lang/Object;JJ)V

    .line 26
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_a
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    .line 29
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_b
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_c
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    .line 35
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 36
    :pswitch_d
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 39
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 40
    :pswitch_f
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 43
    :pswitch_10
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzm(Ljava/lang/Object;JZ)V

    .line 45
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 46
    :pswitch_11
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    .line 48
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto :goto_1

    .line 49
    :pswitch_12
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzr(Ljava/lang/Object;JJ)V

    .line 51
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto :goto_1

    .line 52
    :pswitch_13
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzq(Ljava/lang/Object;JI)V

    .line 54
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto :goto_1

    .line 55
    :pswitch_14
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzr(Ljava/lang/Object;JJ)V

    .line 57
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto :goto_1

    .line 58
    :pswitch_15
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzr(Ljava/lang/Object;JJ)V

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto :goto_1

    .line 61
    :pswitch_16
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzp(Ljava/lang/Object;JF)V

    .line 63
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    goto :goto_1

    .line 64
    :pswitch_17
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzo(Ljava/lang/Object;JD)V

    .line 66
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzD(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 67
    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzex;->zzp(Lcom/google/android/gms/internal/play_billing/zzfm;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 68
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcu;

    .line 69
    throw v0

    .line 70
    :cond_3
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzbp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzen;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzbp;)I

    return-void
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzge;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    const/4 v9, 0x0

    if-nez v0, :cond_6

    iget-object v10, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    const v12, 0xfffff

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v2, v10

    if-ge v14, v2, :cond_5

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v2

    iget-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v4

    .line 2
    aget v15, v3, v14

    const/16 v5, 0x11

    const/4 v13, 0x1

    if-gt v4, v5, :cond_2

    add-int/lit8 v5, v14, 0x2

    .line 3
    aget v3, v3, v5

    and-int v5, v3, v12

    if-eq v5, v0, :cond_1

    if-ne v5, v12, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    .line 4
    invoke-virtual {v11, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v3, v3, 0x14

    shl-int v3, v13, v3

    move/from16 v16, v0

    move/from16 v17, v1

    move v5, v3

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    const/4 v5, 0x0

    :goto_2
    and-int v0, v2, v12

    int-to-long v2, v0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 113
    :pswitch_0
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    .line 115
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)V

    goto/16 :goto_5

    .line 116
    :pswitch_1
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzC(IJ)V

    goto/16 :goto_5

    .line 118
    :pswitch_2
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzA(II)V

    goto/16 :goto_5

    .line 120
    :pswitch_3
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzy(IJ)V

    goto/16 :goto_5

    .line 122
    :pswitch_4
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzw(II)V

    goto/16 :goto_5

    .line 124
    :pswitch_5
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzi(II)V

    goto/16 :goto_5

    .line 126
    :pswitch_6
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzH(II)V

    goto/16 :goto_5

    .line 128
    :pswitch_7
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzd(ILcom/google/android/gms/internal/play_billing/zzcc;)V

    goto/16 :goto_5

    .line 130
    :pswitch_8
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)V

    goto/16 :goto_5

    .line 133
    :pswitch_9
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/play_billing/zzen;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzge;)V

    goto/16 :goto_5

    .line 135
    :pswitch_a
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzN(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzb(IZ)V

    goto/16 :goto_5

    .line 137
    :pswitch_b
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzk(II)V

    goto/16 :goto_5

    .line 139
    :pswitch_c
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzm(IJ)V

    goto/16 :goto_5

    .line 141
    :pswitch_d
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzr(II)V

    goto/16 :goto_5

    .line 143
    :pswitch_e
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzJ(IJ)V

    goto/16 :goto_5

    .line 145
    :pswitch_f
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzt(IJ)V

    goto/16 :goto_5

    .line 147
    :pswitch_10
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzn(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzo(IF)V

    goto/16 :goto_5

    .line 149
    :pswitch_11
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzen;->zzm(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzf(ID)V

    goto/16 :goto_5

    .line 151
    :pswitch_12
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 194
    :cond_3
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 195
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzed;

    .line 196
    throw v9

    .line 105
    :pswitch_13
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 106
    aget v0, v0, v14

    .line 107
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 108
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v2

    .line 109
    sget v3, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    if-eqz v1, :cond_4

    .line 110
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 111
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 112
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzcl;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 102
    :pswitch_14
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 103
    aget v0, v0, v14

    .line 104
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 105
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 99
    :pswitch_15
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 100
    aget v0, v0, v14

    .line 101
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 102
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 96
    :pswitch_16
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 97
    aget v0, v0, v14

    .line 98
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 99
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 93
    :pswitch_17
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 94
    aget v0, v0, v14

    .line 95
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 96
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 90
    :pswitch_18
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 91
    aget v0, v0, v14

    .line 92
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 93
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 87
    :pswitch_19
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 88
    aget v0, v0, v14

    .line 89
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 84
    :pswitch_1a
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 85
    aget v0, v0, v14

    .line 86
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 87
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 81
    :pswitch_1b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 82
    aget v0, v0, v14

    .line 83
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 78
    :pswitch_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 79
    aget v0, v0, v14

    .line 80
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 81
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 75
    :pswitch_1d
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 76
    aget v0, v0, v14

    .line 77
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 72
    :pswitch_1e
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 73
    aget v0, v0, v14

    .line 74
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 75
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 69
    :pswitch_1f
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 70
    aget v0, v0, v14

    .line 71
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 66
    :pswitch_20
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 67
    aget v0, v0, v14

    .line 68
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 69
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 63
    :pswitch_21
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 64
    aget v0, v0, v14

    .line 65
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 60
    :pswitch_22
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 61
    aget v0, v0, v14

    .line 62
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    .line 63
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzex;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_23
    const/4 v4, 0x0

    .line 57
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 58
    aget v0, v0, v14

    .line 59
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 60
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzex;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_24
    const/4 v4, 0x0

    .line 54
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 55
    aget v0, v0, v14

    .line 56
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 57
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzex;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_25
    const/4 v4, 0x0

    .line 51
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 52
    aget v0, v0, v14

    .line 53
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 54
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzex;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_26
    const/4 v4, 0x0

    .line 48
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 49
    aget v0, v0, v14

    .line 50
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 51
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzex;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_27
    const/4 v4, 0x0

    .line 45
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 46
    aget v0, v0, v14

    .line 47
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 48
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzex;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    .line 40
    :pswitch_28
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 41
    aget v0, v0, v14

    .line 42
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 43
    sget v2, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    if-eqz v1, :cond_4

    .line 44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 45
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zze(ILjava/util/List;)V

    goto/16 :goto_5

    .line 33
    :pswitch_29
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 34
    aget v0, v0, v14

    .line 35
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 36
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v2

    .line 37
    sget v3, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    if-eqz v1, :cond_4

    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 39
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzcl;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 28
    :pswitch_2a
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 29
    aget v0, v0, v14

    .line 30
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 31
    sget v2, Lcom/google/android/gms/internal/play_billing/zzex;->zza:I

    if-eqz v1, :cond_4

    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 33
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzG(ILjava/util/List;)V

    goto/16 :goto_5

    .line 25
    :pswitch_2b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 26
    aget v0, v0, v14

    .line 27
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v13, 0x0

    .line 28
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v13, 0x0

    .line 22
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 23
    aget v0, v0, v14

    .line 24
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 25
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v13, 0x0

    .line 19
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 20
    aget v0, v0, v14

    .line 21
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 22
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v13, 0x0

    .line 16
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 17
    aget v0, v0, v14

    .line 18
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 19
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v13, 0x0

    .line 13
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 14
    aget v0, v0, v14

    .line 15
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 16
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v13, 0x0

    .line 10
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 11
    aget v0, v0, v14

    .line 12
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 13
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v13, 0x0

    .line 7
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 8
    aget v0, v0, v14

    .line 9
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 10
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v13, 0x0

    .line 3
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    .line 5
    aget v0, v0, v14

    .line 6
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/play_billing/zzex;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzge;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v14

    move-wide v12, v3

    move/from16 v3, v16

    move/from16 v4, v17

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    .line 154
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)V

    goto/16 :goto_5

    :pswitch_34
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzC(IJ)V

    goto/16 :goto_5

    :pswitch_35
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzA(II)V

    goto/16 :goto_5

    :pswitch_36
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzy(IJ)V

    goto/16 :goto_5

    :pswitch_37
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzw(II)V

    goto/16 :goto_5

    :pswitch_38
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzi(II)V

    goto/16 :goto_5

    :pswitch_39
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzH(II)V

    goto/16 :goto_5

    :pswitch_3a
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzd(ILcom/google/android/gms/internal/play_billing/zzcc;)V

    goto/16 :goto_5

    :pswitch_3b
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 171
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzev;)V

    goto/16 :goto_5

    :pswitch_3c
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/play_billing/zzen;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzge;)V

    goto/16 :goto_5

    :pswitch_3d
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    .line 176
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzb(IZ)V

    goto/16 :goto_5

    :pswitch_3e
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzk(II)V

    goto/16 :goto_5

    :pswitch_3f
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzm(IJ)V

    goto/16 :goto_5

    :pswitch_40
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzr(II)V

    goto/16 :goto_5

    :pswitch_41
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzJ(IJ)V

    goto :goto_5

    :pswitch_42
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzt(IJ)V

    goto :goto_5

    :pswitch_43
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 189
    invoke-interface {v8, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzge;->zzo(IF)V

    goto :goto_5

    :pswitch_44
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzfw;->zza(Ljava/lang/Object;J)D

    move-result-wide v0

    .line 192
    invoke-interface {v8, v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzge;->zzf(ID)V

    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    const v12, 0xfffff

    goto/16 :goto_0

    .line 198
    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 193
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzge;)V

    return-void

    .line 4
    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 197
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcu;

    .line 198
    goto :goto_7

    :goto_6
    throw v9

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzp(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzex;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfw;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 53
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzm:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 54
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 56
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcu;

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcu;

    const/4 p1, 0x0

    .line 58
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 1
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzj:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzi:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    aget v12, v2, v10

    .line 2
    aget v13, v4, v12

    .line 3
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzen;->zzs(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzc:[I

    add-int/lit8 v4, v12, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move/from16 v17, v0

    goto :goto_1

    :cond_0
    move/from16 v17, v1

    :goto_1
    move/from16 v16, v4

    goto :goto_2

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_2
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    return v9

    :cond_3
    :goto_3
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzen;->zzr(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_5

    :cond_4
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 13
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzee;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    .line 20
    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzen;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzed;

    .line 22
    throw v11

    .line 16
    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/play_billing/zzen;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzev;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_7
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 9
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzev;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzen;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzen;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzev;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzh:Z

    if-nez v0, :cond_c

    return v3

    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzen;->zzn:Lcom/google/android/gms/internal/play_billing/zzcq;

    .line 23
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcu;

    goto :goto_7

    :goto_6
    throw v11

    :goto_7
    goto :goto_6
.end method
