.class final enum Lcom/google/android/gms/internal/measurement/zzit;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzit;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzit;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzit;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzit;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/measurement/zzit;


# instance fields
.field private final zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzit;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzit;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzit;->zza:Lcom/google/android/gms/internal/measurement/zzit;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzit;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/measurement/zzit;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzit;->zzb:Lcom/google/android/gms/internal/measurement/zzit;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzit;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzit;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzit;->zzc:Lcom/google/android/gms/internal/measurement/zzit;

    .line 4
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzit;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/google/android/gms/internal/measurement/zzit;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzit;->zzd:Lcom/google/android/gms/internal/measurement/zzit;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/measurement/zzit;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lcom/google/android/gms/internal/measurement/zzit;->zze:[Lcom/google/android/gms/internal/measurement/zzit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzit;->zzf:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzit;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzit;->zze:[Lcom/google/android/gms/internal/measurement/zzit;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzit;

    return-object v0
.end method
