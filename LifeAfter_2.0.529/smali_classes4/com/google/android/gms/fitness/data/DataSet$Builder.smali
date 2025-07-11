.class public Lcom/google/android/gms/fitness/data/DataSet$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/DataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/DataSet;

.field private zzb:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/zzh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zzb:Z

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataSet$Builder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/fitness/data/DataSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;)",
            "Lcom/google/android/gms/fitness/data/DataSet$Builder;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataSet;->addAll(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/fitness/data/DataSet;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "DataSet#build() should only be called once."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method
