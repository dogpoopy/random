.class final enum Lcom/google/android/gms/measurement/internal/zzaj;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzaj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zze:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzf:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzg:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzh:Lcom/google/android/gms/measurement/internal/zzaj;

.field private static final synthetic zzi:[Lcom/google/android/gms/measurement/internal/zzaj;


# instance fields
.field private final zzj:C


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v3, "REMOTE_DEFAULT"

    const/4 v4, 0x1

    const/16 v5, 0x31

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 8
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v5, "REMOTE_DELEGATION"

    const/4 v6, 0x2

    const/16 v7, 0x32

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 9
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v7, "MANIFEST"

    const/4 v8, 0x3

    const/16 v9, 0x33

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzaj;->zzd:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 10
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v9, "INITIALIZATION"

    const/4 v10, 0x4

    const/16 v11, 0x34

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v7, Lcom/google/android/gms/measurement/internal/zzaj;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 11
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v11, "API"

    const/4 v12, 0x5

    const/16 v13, 0x35

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v9, Lcom/google/android/gms/measurement/internal/zzaj;->zzf:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 12
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v13, "CHILD_ACCOUNT"

    const/4 v14, 0x6

    const/16 v15, 0x36

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzg:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 13
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v15, "FAILSAFE"

    const/4 v14, 0x7

    const/16 v12, 0x39

    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v13, Lcom/google/android/gms/measurement/internal/zzaj;->zzh:Lcom/google/android/gms/measurement/internal/zzaj;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/google/android/gms/measurement/internal/zzaj;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 15
    sput-object v12, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:[Lcom/google/android/gms/measurement/internal/zzaj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-char p3, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:C

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:[Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzaj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzaj;

    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzaj;)C
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:C

    return p0
.end method

.method public static zza(C)Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaj;->values()[Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-char v4, v3, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:C

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Lcom/google/android/gms/measurement/internal/zzaj;

    return-object p0
.end method
