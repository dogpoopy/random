.class final Lcom/google/android/gms/internal/measurement/zzja;
.super Lcom/google/android/gms/internal/measurement/zzhg;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjd;
.implements Lcom/google/android/gms/internal/measurement/zzkv;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhg<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjd;",
        "Lcom/google/android/gms/internal/measurement/zzkv;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzja;


# instance fields
.field private zzb:[I

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzja;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zzja;-><init>([IIZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zza:Lcom/google/android/gms/internal/measurement/zzja;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzja;-><init>([IIZ)V

    return-void
.end method

.method private constructor <init>([IIZ)V
    .locals 0

    .line 49
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>(Z)V

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    .line 51
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzja;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzja;->zza:Lcom/google/android/gms/internal/measurement/zzja;

    return-object v0
.end method

.method private final zze(I)Ljava/lang/String;
    .locals 3

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzf(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    if-ge p1, v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zze(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 4

    .line 53
    check-cast p2, Ljava/lang/Integer;

    .line 54
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    if-ltz p1, :cond_1

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    if-gt p1, v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 59
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 60
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 61
    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 62
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    aput p2, v0, p1

    .line 66
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    .line 67
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    return-void

    .line 57
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zze(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Integer;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzd(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 92
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 95
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 96
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 98
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 103
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    .line 104
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    .line 106
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    return v0

    .line 100
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzja;

    if-nez v1, :cond_1

    .line 112
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 113
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzja;

    .line 114
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 116
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    const/4 v1, 0x0

    .line 117
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    if-ge v1, v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzb(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 8
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzja;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    aget v1, v0, p1

    .line 30
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 31
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    .line 33
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    if-lt p2, p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    .line 85
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->modCount:I

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 36
    check-cast p2, Ljava/lang/Integer;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    aget v1, v0, p1

    .line 41
    aput p2, v0, p1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    return v0
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/measurement/zzjf;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzc(I)Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->zzf(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    aget p1, v0, p1

    return p1
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/measurement/zzjd;
    .locals 3

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    if-lt p1, v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzja;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzja;-><init>([IIZ)V

    return-object v0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzd(I)V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    .line 71
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 72
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 73
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzb:[I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzc:I

    aput p1, v0, v1

    return-void
.end method
