.class public Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addField(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addField(Ljava/lang/String;I)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Invalid name specified"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->addField(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Must set the name"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "Must specify the data fields"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zzb:Ljava/util/List;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/fitness/zzbt;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method
