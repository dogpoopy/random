.class public final Lcom/google/android/gms/fitness/data/DataSet;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/DataSet$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSet;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 2
    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/fitness/data/RawDataPoint;

    iget-object p3, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    .line 5
    new-instance p4, Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    invoke-direct {p4, v0, p2}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zza:I

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zza:I

    .line 12
    iget v0, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->zza:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->zzb:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/fitness/data/RawDataPoint;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    .line 16
    new-instance v1, Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static builder(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet$Builder;
    .locals 2

    const-string v0, "DataSource should be specified"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataSet$Builder;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/DataSet$Builder;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/zzh;)V

    return-object v0
.end method

.method public static create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 1

    const-string v0, "DataSource should be specified"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/zzl;->zza(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    const-string v1, "DataPoint out of range"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v1, v2

    goto/16 :goto_4

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->zzc(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/Field;->isOptional()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/google/android/gms/fitness/data/zzaj;->zzd:Ljava/util/Set;

    .line 7
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " not set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 8
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_4

    .line 9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->zzc(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v5

    int-to-double v5, v5

    goto :goto_2

    :cond_4
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_7

    .line 10
    invoke-virtual {p0, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->zzc(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result v5

    float-to-double v5, v5

    .line 11
    :goto_2
    invoke-static {}, Lcom/google/android/gms/fitness/data/zzaj;->zzc()Lcom/google/android/gms/fitness/data/zzaj;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/fitness/data/zzaj;->zza(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzai;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/fitness/data/zzai;->zza(D)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v1, "Field out of range"

    goto :goto_4

    .line 12
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/fitness/data/zzaj;->zzc()Lcom/google/android/gms/fitness/data/zzaj;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v7, v4}, Lcom/google/android/gms/fitness/data/zzaj;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzai;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-virtual {p0, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_6

    const-wide/16 v3, 0x0

    cmpl-double v0, v5, v3

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_6
    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/fitness/data/zzai;->zza(D)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 15
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.activity.segment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/google/android/gms/fitness/data/Field;->FIELD_ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v1, "activity is not set"

    goto :goto_4

    .line 18
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/fitness/zzfw;->zzbd:Lcom/google/android/gms/internal/fitness/zzfw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fitness/zzfw;->zza(ILcom/google/android/gms/internal/fitness/zzfw;)Lcom/google/android/gms/internal/fitness/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fitness/zzfw;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Sleep types are not a valid activity for com.google.activity.segment"

    :cond_a
    :goto_4
    if-nez v1, :cond_b

    return-void

    .line 19
    :cond_b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid data point: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Fitness"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public add(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->getStreamIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->getStreamIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Conflicting data sources found %s vs %s"

    .line 3
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzd()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->zzc(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/DataSet;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/DataSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDataPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataSet;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzb:Lcom/google/android/gms/fitness/data/DataSource;

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->zzb()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    const/16 v7, 0xa

    if-ge v4, v7, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const/4 v7, 0x5

    .line 5
    invoke-interface {v0, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, "%d data points, first 5: %s"

    .line 6
    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v6

    const-string v0, "DataSet{%s %s}"

    .line 7
    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/fitness/data/DataSet;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->zza:I

    const/16 v1, 0x3e8

    .line 6
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method final zza(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 3
    new-instance v3, Lcom/google/android/gms/fitness/data/RawDataPoint;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/fitness/data/RawDataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->zzd:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
