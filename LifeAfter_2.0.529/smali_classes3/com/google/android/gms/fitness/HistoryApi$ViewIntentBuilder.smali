.class public Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/HistoryApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewIntentBuilder"
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/fitness/data/DataType;

.field private zzc:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzd:J

.field private zze:J

.field private zzf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzd:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Start time must be set"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zze:J

    iget-wide v4, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzd:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "End time must be set and after start time"

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "vnd.google.fitness.VIEW"

    .line 3
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzc:Lcom/google/android/gms/fitness/data/DataSource;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/DataType;->getMimeType(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzd:J

    const-string v4, "vnd.google.fitness.start_time"

    .line 5
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-wide v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zze:J

    const-string v4, "vnd.google.fitness.end_time"

    .line 6
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzc:Lcom/google/android/gms/fitness/data/DataSource;

    const-string v2, "vnd.google.fitness.data_source"

    .line 7
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToIntentExtra(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzf:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/content/Intent;

    .line 8
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zza:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzf:Ljava/lang/String;

    .line 11
    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Data source %s is not for the data type %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzc:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setPreferredApplication(Ljava/lang/String;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;
    .locals 0

    .line 1
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zzd:J

    .line 2
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/HistoryApi$ViewIntentBuilder;->zze:J

    return-object p0
.end method
