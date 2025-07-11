.class final Lcom/google/android/gms/internal/measurement/zzhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzig;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zzb:[B

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb([B)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zza:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzhu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhv;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzhm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zza:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzb()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhw;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhw;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzig;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zza:Lcom/google/android/gms/internal/measurement/zzig;

    return-object v0
.end method
