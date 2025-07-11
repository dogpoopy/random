.class final Lcom/google/android/gms/internal/play_billing/zzau;
.super Lcom/google/android/gms/internal/play_billing/zzal;
.source "com.android.billingclient:billing@@6.2.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzal;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzau;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzau;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzau;->zza:Lcom/google/android/gms/internal/play_billing/zzal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzd:I

    return-void
.end method

.method static zzg(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzak;)Lcom/google/android/gms/internal/play_billing/zzau;
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzau;->zza:Lcom/google/android/gms/internal/play_billing/zzal;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzau;

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 1
    aget-object v0, v1, v4

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzau;

    invoke-direct {v0, v3, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzau;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 3
    :cond_1
    array-length v6, v1

    shr-int/2addr v6, v5

    const-string v7, "index"

    .line 4
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzaa;->zzb(IILjava/lang/String;)I

    const/4 v6, 0x2

    .line 5
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    const v8, 0x2ccccccc

    const/high16 v9, 0x40000000    # 2.0f

    if-ge v7, v8, :cond_2

    add-int/lit8 v8, v7, -0x1

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    add-int/2addr v8, v8

    move v9, v8

    :goto_0
    int-to-double v10, v9

    const-wide v12, 0x3fe6666666666666L    # 0.7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    int-to-double v12, v7

    cmpg-double v8, v10, v12

    if-gez v8, :cond_3

    add-int/2addr v9, v9

    goto :goto_0

    :cond_2
    if-ge v7, v9, :cond_18

    :cond_3
    if-ne v0, v5, :cond_4

    .line 7
    aget-object v0, v1, v4

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-object v7, v1, v5

    .line 9
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 7
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_1
    const/4 v5, 0x2

    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_d

    :cond_4
    add-int/lit8 v7, v9, -0x1

    const/16 v8, 0x80

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-gt v9, v8, :cond_a

    .line 10
    new-array v8, v9, [B

    .line 11
    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    move-object v11, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v3, v0, :cond_8

    add-int v12, v9, v9

    add-int v13, v3, v3

    .line 12
    aget-object v14, v1, v13

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    xor-int/2addr v13, v5

    .line 13
    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 14
    invoke-static {v14, v13}, Lcom/google/android/gms/internal/play_billing/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/zzae;->zza(I)I

    move-result v15

    :goto_4
    and-int/2addr v15, v7

    .line 16
    aget-byte v6, v8, v15

    const/16 v5, 0xff

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_6

    int-to-byte v5, v12

    .line 18
    aput-byte v5, v8, v15

    if-ge v9, v3, :cond_5

    .line 19
    aput-object v14, v1, v12

    xor-int/lit8 v5, v12, 0x1

    .line 20
    aput-object v13, v1, v5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 17
    :cond_6
    aget-object v5, v1, v6

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    xor-int/lit8 v5, v6, 0x1

    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzaj;

    .line 21
    aget-object v11, v1, v5

    .line 22
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v6, v14, v13, v11}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    aput-object v13, v1, v5

    move-object v11, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_3

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_4

    :cond_8
    if-ne v9, v0, :cond_9

    move-object v3, v8

    goto :goto_1

    :cond_9
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v8, v3, v4

    .line 24
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    aput-object v11, v3, v5

    goto :goto_2

    :cond_a
    const v5, 0x8000

    if-gt v9, v5, :cond_10

    new-array v5, v9, [S

    .line 25
    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([SS)V

    move-object v8, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    add-int v9, v6, v6

    add-int v11, v3, v3

    .line 26
    aget-object v12, v1, v11

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    xor-int/2addr v11, v13

    .line 27
    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 28
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzae;->zza(I)I

    move-result v13

    :goto_7
    and-int/2addr v13, v7

    .line 30
    aget-short v14, v5, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_c

    int-to-short v14, v9

    .line 32
    aput-short v14, v5, v13

    if-ge v6, v3, :cond_b

    .line 33
    aput-object v12, v1, v9

    xor-int/lit8 v9, v9, 0x1

    .line 34
    aput-object v11, v1, v9

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 31
    :cond_c
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    xor-int/lit8 v8, v14, 0x1

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzaj;

    .line 35
    aget-object v13, v1, v8

    .line 36
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    aput-object v11, v1, v8

    move-object v8, v9

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_e
    if-ne v6, v0, :cond_f

    goto :goto_c

    :cond_f
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    aput-object v8, v3, v5

    goto/16 :goto_d

    :cond_10
    const/4 v6, 0x1

    new-array v5, v9, [I

    .line 39
    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    move-object v9, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v3, v0, :cond_14

    add-int v12, v8, v8

    add-int v13, v3, v3

    .line 40
    aget-object v14, v1, v13

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    xor-int/2addr v13, v6

    .line 41
    aget-object v6, v1, v13

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/play_billing/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzae;->zza(I)I

    move-result v13

    :goto_a
    and-int/2addr v13, v7

    .line 44
    aget v15, v5, v13

    if-ne v15, v11, :cond_12

    .line 46
    aput v12, v5, v13

    if-ge v8, v3, :cond_11

    .line 47
    aput-object v14, v1, v12

    xor-int/lit8 v12, v12, 0x1

    .line 48
    aput-object v6, v1, v12

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 45
    :cond_12
    aget-object v11, v1, v15

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    xor-int/lit8 v9, v15, 0x1

    new-instance v11, Lcom/google/android/gms/internal/play_billing/zzaj;

    .line 49
    aget-object v12, v1, v9

    .line 50
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v11, v14, v6, v12}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    aput-object v6, v1, v9

    move-object v9, v11

    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    const/4 v11, -0x1

    goto :goto_9

    :cond_13
    add-int/lit8 v13, v13, 0x1

    const/4 v11, -0x1

    goto :goto_a

    :cond_14
    if-ne v8, v0, :cond_15

    :goto_c
    move-object v3, v5

    goto/16 :goto_1

    :cond_15
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    aput-object v9, v3, v5

    .line 53
    :goto_d
    instance-of v7, v3, [Ljava/lang/Object;

    if-eqz v7, :cond_17

    .line 54
    check-cast v3, [Ljava/lang/Object;

    .line 55
    aget-object v0, v3, v5

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzaj;

    if-eqz v2, :cond_16

    .line 56
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/zzak;->zzc:Lcom/google/android/gms/internal/play_billing/zzaj;

    .line 57
    aget-object v0, v3, v4

    .line 58
    aget-object v2, v3, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 56
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzaj;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_17
    move v2, v0

    move-object v0, v3

    .line 59
    :goto_e
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzau;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzau;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v3

    .line 52
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p1, v0

    goto/16 :goto_4

    .line 1
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    aget-object p1, v2, v3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzc:Ljava/lang/Object;

    if-nez v1, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    instance-of v4, v1, [B

    const/4 v5, -0x1

    if-eqz v4, :cond_6

    .line 4
    move-object v4, v1

    check-cast v4, [B

    array-length v1, v4

    add-int/lit8 v6, v1, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzae;->zza(I)I

    move-result v1

    :goto_1
    and-int/2addr v1, v6

    .line 6
    aget-byte v5, v4, v1

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    aget-object v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v5, 0x1

    .line 8
    aget-object p1, v2, p1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_6
    instance-of v4, v1, [S

    if-eqz v4, :cond_9

    .line 10
    move-object v4, v1

    check-cast v4, [S

    array-length v1, v4

    add-int/lit8 v6, v1, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzae;->zza(I)I

    move-result v1

    :goto_2
    and-int/2addr v1, v6

    .line 12
    aget-short v5, v4, v1

    int-to-char v5, v5

    const v7, 0xffff

    if-ne v5, v7, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    aget-object v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v5, 0x1

    .line 14
    aget-object p1, v2, p1

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_9
    check-cast v1, [I

    array-length v4, v1

    add-int/2addr v4, v5

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzae;->zza(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v4

    .line 17
    aget v7, v1, v6

    if-ne v7, v5, :cond_a

    goto/16 :goto_0

    .line 18
    :cond_a
    aget-object v8, v2, v7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    xor-int/lit8 p1, v7, 0x1

    .line 19
    aget-object p1, v2, p1

    :goto_4
    if-nez p1, :cond_b

    return-object v0

    :cond_b
    return-object p1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzd:I

    return v0
.end method

.method final zza()Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzat;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzat;-><init>([Ljava/lang/Object;II)V

    return-object v1
.end method

.method final zzd()Lcom/google/android/gms/internal/play_billing/zzam;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzb:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzar;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzar;-><init>(Lcom/google/android/gms/internal/play_billing/zzal;[Ljava/lang/Object;II)V

    return-object v2
.end method

.method final zze()Lcom/google/android/gms/internal/play_billing/zzam;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzat;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzau;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzat;-><init>([Ljava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzas;

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/zzas;-><init>(Lcom/google/android/gms/internal/play_billing/zzal;Lcom/google/android/gms/internal/play_billing/zzai;)V

    return-object v0
.end method
