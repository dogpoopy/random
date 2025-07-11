.class final Lcom/google/android/gms/internal/measurement/zziw;
.super Lcom/google/android/gms/internal/measurement/zzhg;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjf;
.implements Lcom/google/android/gms/internal/measurement/zzkv;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhg<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjf<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkv;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zziw;


# instance fields
.field private zzb:[F

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziw;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zziw;-><init>([FIZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziw;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zziw;-><init>([FIZ)V

    return-void
.end method

.method private constructor <init>([FIZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>(Z)V

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    .line 52
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    return-void
.end method

.method private final zzb(I)Ljava/lang/String;
    .locals 3

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

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

.method private final zzc(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 78
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    if-ge p1, v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzb(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 4

    .line 54
    check-cast p2, Ljava/lang/Float;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    if-ltz p1, :cond_1

    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    if-gt p1, v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 60
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 61
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 62
    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    aput p2, v0, p1

    .line 67
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    .line 68
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    return-void

    .line 58
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzb(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/Float;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zza(F)V

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
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zziw;

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zziw;

    .line 97
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 99
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 104
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    .line 105
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    .line 107
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    return v0

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->indexOf(Ljava/lang/Object;)I

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

    .line 112
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zziw;

    if-nez v1, :cond_1

    .line 113
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 114
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zziw;

    .line 115
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 117
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    if-ge v1, v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    aget p1, v0, p1

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 6
    instance-of v0, p1, Ljava/lang/Float;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziw;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    aget v3, v3, v2

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    aget v1, v0, p1

    .line 31
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 32
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    .line 34
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    .line 35
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    if-lt p2, p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    .line 86
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zziw;->modCount:I

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 37
    check-cast p2, Ljava/lang/Float;

    .line 38
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc(I)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    aget v1, v0, p1

    .line 42
    aput p2, v0, p1

    .line 44
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    return v0
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/measurement/zzjf;
    .locals 3

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    if-lt p1, v0, :cond_0

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziw;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zziw;-><init>([FIZ)V

    return-object v0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(F)V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    .line 71
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    .line 72
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 73
    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 74
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzb:[F

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zziw;->zzc:I

    aput p1, v0, v1

    return-void
.end method
