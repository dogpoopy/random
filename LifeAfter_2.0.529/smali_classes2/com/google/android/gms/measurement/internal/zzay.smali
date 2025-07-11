.class public final Lcom/google/android/gms/measurement/internal/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/measurement/internal/zzay;


# instance fields
.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/Boolean;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/google/android/gms/measurement/internal/zzih$zza;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzay;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/lang/Boolean;I)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Lcom/google/android/gms/measurement/internal/zzay;

    return-void
.end method

.method constructor <init>(Ljava/lang/Boolean;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzf:Ljava/util/EnumMap;

    .line 91
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzih$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:I

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzay;->zzh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzc:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    .line 95
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/google/android/gms/measurement/internal/zzih$zza;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/google/android/gms/measurement/internal/zzih$zza;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzf:Ljava/util/EnumMap;

    .line 99
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 100
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:I

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzay;->zzh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzc:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    .line 103
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzay;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 26
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/lang/Boolean;I)V

    return-object p0

    .line 27
    :cond_0
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 28
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzig;->zzb:Lcom/google/android/gms/measurement/internal/zzig;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzig;->zza()[Lcom/google/android/gms/measurement/internal/zzih$zza;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 29
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzih$zza;->zze:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzih;->zzb(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 32
    invoke-virtual {v1, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzay;

    const-string v3, "is_dma_region"

    .line 35
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    const-string v3, "cps_display_str"

    .line 38
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object v2
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzay;
    .locals 9

    if-eqz p0, :cond_2

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ":"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 43
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 44
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 46
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzig;->zzb:Lcom/google/android/gms/measurement/internal/zzig;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzig;->zza()[Lcom/google/android/gms/measurement/internal/zzih$zza;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    add-int/lit8 v8, v5, 0x1

    .line 47
    aget-object v5, p0, v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzih;->zza(C)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/util/EnumMap;I)V

    return-object p0

    .line 41
    :cond_2
    :goto_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Lcom/google/android/gms/measurement/internal/zzay;

    return-object p0
.end method

.method public static zza(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ad_personalization"

    .line 53
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzih;->zzb(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final zzh()Ljava/lang/String;
    .locals 6

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzig;->zzb:Lcom/google/android/gms/measurement/internal/zzig;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzig;->zza()[Lcom/google/android/gms/measurement/internal/zzih$zza;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ":"

    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzf:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/Boolean;)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 105
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzay;

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzc:Ljava/lang/String;

    .line 111
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzay;->zzc:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    if-nez v1, :cond_2

    const/16 v1, 0x11

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzc:Ljava/lang/String;

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v0, v0, 0x1d

    add-int/2addr v2, v0

    mul-int/lit16 v1, v1, 0x89

    add-int/2addr v2, v1

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:I

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzig;->zzb:Lcom/google/android/gms/measurement/internal/zzig;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzig;->zza()[Lcom/google/android/gms/measurement/internal/zzih$zza;

    move-result-object v1

    .line 69
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 70
    aget-object v4, v1, v3

    const-string v5, ","

    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzih$zza;->zze:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzf:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    const-string v4, "uninitialized"

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 77
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "granted"

    goto :goto_1

    :cond_1
    const-string v4, "denied"

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const-string v1, ",isDmaRegion="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ",cpsDisplayStr="

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:I

    return v0
.end method

.method public final zzb()Landroid/os/Bundle;
    .locals 4

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzf:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzih$zza;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzih$zza;->zze:Ljava/lang/String;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Z)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_dma_region"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "cps_display_str"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzf:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzih$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzf:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
