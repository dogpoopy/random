.class public Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzb:Lcom/google/android/gms/fitness/data/DataType;

.field private zzc:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Set either dataSource or dataTYpe"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzc:Landroid/app/PendingIntent;

    const-string v1, "pendingIntent must be set"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzc:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    .line 4
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest$Builder;->zzc:Landroid/app/PendingIntent;

    return-object p0
.end method
