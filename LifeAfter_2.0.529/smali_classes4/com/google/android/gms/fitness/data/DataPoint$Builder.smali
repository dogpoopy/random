.class public Lcom/google/android/gms/fitness/data/DataPoint$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/DataPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/DataPoint;

.field private zzb:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "DataPoint#build should not be called multiple times."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    return-object v0
.end method

.method public setActivityField(Lcom/google/android/gms/fitness/data/Field;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzfv;->zza(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    return-object p0
.end method

.method public setField(Lcom/google/android/gms/fitness/data/Field;F)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    return-object p0
.end method

.method public setField(Lcom/google/android/gms/fitness/data/Field;I)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    return-object p0
.end method

.method public setField(Lcom/google/android/gms/fitness/data/Field;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/Value;->setString(Ljava/lang/String;)V

    return-object p0
.end method

.method public setField(Lcom/google/android/gms/fitness/data/Field;Ljava/util/Map;)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/android/gms/fitness/data/DataPoint$Builder;"
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/Value;->zza(Ljava/util/Map;)V

    return-object p0
.end method

.method public varargs setFloatValues([F)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->setFloatValues([F)Lcom/google/android/gms/fitness/data/DataPoint;

    return-object p0
.end method

.method public varargs setIntValues([I)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->setIntValues([I)Lcom/google/android/gms/fitness/data/DataPoint;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .line 2
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    return-object p0
.end method

.method public setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint$Builder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zzb:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Builder should not be mutated after calling #build."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint$Builder;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    return-object p0
.end method
