.class public Lcom/google/android/gms/fitness/request/StartBleScanRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/StartBleScanRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/fitness/request/zzab;

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/fitness/zzcp;

.field private final zze:Lcom/google/android/gms/fitness/request/BleScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzba;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/IBinder;ILandroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zza:Ljava/util/List;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.request.IBleScanCallback"

    .line 2
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/fitness/request/zzab;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/google/android/gms/fitness/request/zzab;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/request/zzz;

    invoke-direct {v0, p2}, Lcom/google/android/gms/fitness/request/zzz;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzb:Lcom/google/android/gms/fitness/request/zzab;

    iput p3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzc:I

    if-nez p4, :cond_2

    move-object p2, p1

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p4}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object p2

    .line 1
    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzd:Lcom/google/android/gms/internal/fitness/zzcp;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zze:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/BleScanCallback;ILcom/google/android/gms/fitness/request/zzaz;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zza:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzb:Lcom/google/android/gms/fitness/request/zzab;

    iput p3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzd:Lcom/google/android/gms/internal/fitness/zzcp;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zze:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzab;ILcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzb:Lcom/google/android/gms/fitness/request/zzab;

    iput p3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzd:Lcom/google/android/gms/internal/fitness/zzcp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zze:Lcom/google/android/gms/fitness/request/BleScanCallback;

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

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zza:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutSecs()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzc:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zza:Ljava/util/List;

    const-string v2, "dataTypes"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzc:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "timeoutSecs"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzb:Lcom/google/android/gms/fitness/request/zzab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzab;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v3, 0x2

    .line 4
    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getTimeoutSecs()I

    move-result v3

    .line 6
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzd:Lcom/google/android/gms/internal/fitness/zzcp;

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzcp;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 v0, 0x4

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/fitness/request/BleScanCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zze:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-object v0
.end method
