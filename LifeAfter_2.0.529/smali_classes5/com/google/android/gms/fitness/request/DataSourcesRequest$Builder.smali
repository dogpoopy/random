.class public Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataSourcesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zza:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/DataSourcesRequest;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Must add at least one data type"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Must add at least one data source type"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zzb:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/fitness/zzbq;)V

    return-object v0
.end method

.method public varargs setDataSourceTypes([I)Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zzb:Ljava/util/List;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zzb:Ljava/util/List;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs setDataTypes([Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest$Builder;->zza:Ljava/util/List;

    return-object p0
.end method
