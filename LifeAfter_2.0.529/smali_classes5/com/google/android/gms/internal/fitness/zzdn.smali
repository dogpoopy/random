.class final Lcom/google/android/gms/internal/fitness/zzdn;
.super Lcom/google/android/gms/internal/fitness/zzae;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/request/DataReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzds;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzdn;->zza:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzae;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdn;->zza:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fitness/zzdn;->zza:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataSources()Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataSource;

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/fitness/data/DataSet;->builder(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet$Builder;->build()Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataType;

    new-instance v3, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    const-string v1, "Default"

    .line 9
    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/fitness/data/DataSet;->builder(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSet$Builder;->build()Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/result/DataReadResult;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzaj;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzdr;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fitness/zzdr;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzdq;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzaj;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzca;

    new-instance v1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzdn;->zza:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/fitness/zzbn;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzca;->zzg(Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    return-void
.end method
