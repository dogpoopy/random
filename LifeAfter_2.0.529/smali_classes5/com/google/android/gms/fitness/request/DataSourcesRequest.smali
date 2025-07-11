.class public Lcom/google/android/gms/fitness/request/DataSourcesRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/DataSourcesRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/fitness/zzbq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/fitness/zzbq;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zza:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzb:Ljava/util/List;

    iget-boolean p1, p1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzc:Z

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/fitness/zzbq;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;ZLandroid/os/IBinder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzb:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzc:Z

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/internal/fitness/zzbp;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzbq;

    move-result-object p1

    .line 2
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzd:Lcom/google/android/gms/internal/fitness/zzbq;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/fitness/zzbq;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzb:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzd:Lcom/google/android/gms/internal/fitness/zzbq;

    return-void
.end method


# virtual methods
.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zza:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zza:Ljava/util/List;

    const-string v2, "dataTypes"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzb:Ljava/util/List;

    const-string v2, "sourceTypes"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzc:Z

    if-eqz v1, :cond_0

    const-string v1, "includeDbOnlySources"

    const-string v2, "true"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzb:Ljava/util/List;

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzc:Z

    const/4 v1, 0x3

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->zzd:Lcom/google/android/gms/internal/fitness/zzbq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzbq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
