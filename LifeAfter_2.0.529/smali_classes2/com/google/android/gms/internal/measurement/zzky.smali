.class public final enum Lcom/google/android/gms/internal/measurement/zzky;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzky;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzky;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzky;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzky;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/measurement/zzky;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzky;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzky;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzky;->zza:Lcom/google/android/gms/internal/measurement/zzky;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzky;

    const-string v3, "PROTO3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzky;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Lcom/google/android/gms/internal/measurement/zzky;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzky;

    const-string v5, "EDITIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzky;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzky;->zzc:Lcom/google/android/gms/internal/measurement/zzky;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzky;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 5
    sput-object v5, Lcom/google/android/gms/internal/measurement/zzky;->zzd:[Lcom/google/android/gms/internal/measurement/zzky;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzky;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzky;->zzd:[Lcom/google/android/gms/internal/measurement/zzky;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzky;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzky;

    return-object v0
.end method
