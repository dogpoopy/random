.class public final Lcom/google/android/gms/internal/measurement/zziz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# static fields
.field static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:[B

.field private static final zzc:Ljava/nio/charset/Charset;

.field private static final zzd:Ljava/nio/charset/Charset;

.field private static final zze:Ljava/nio/ByteBuffer;

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzib;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "US-ASCII"

    .line 18
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziz;->zzc:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziz;->zza:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 20
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziz;->zzd:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/measurement/zziz;->zzb:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zziz;->zze:Ljava/nio/ByteBuffer;

    .line 25
    array-length v2, v1

    .line 26
    invoke-static {v1, v0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BIIZ)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/measurement/zziz;->zzf:Lcom/google/android/gms/internal/measurement/zzib;

    return-void
.end method

.method static zza(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    .line 8
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static zza(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static zza(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static zza([B)I
    .locals 2

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zziz;->zza(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzkj;)Z
    .locals 1

    .line 29
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhe;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb([B)Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zziz;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static zzc([B)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmh;->zza([B)Z

    move-result p0

    return p0
.end method
