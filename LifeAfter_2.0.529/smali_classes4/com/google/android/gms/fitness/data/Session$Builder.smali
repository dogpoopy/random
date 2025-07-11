.class public Lcom/google/android/gms/fitness/data/Session$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzb:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zze:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzf:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/data/Session;
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zza:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v3

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Start time should be specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzb:J

    cmp-long v6, v0, v3

    if-eqz v6, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zza:J

    cmp-long v6, v0, v3

    if-lez v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-string v0, "End time should be later than start time."

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzd:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzc:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zza:J

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzd:Ljava/lang/String;

    .line 4
    :cond_4
    new-instance v0, Lcom/google/android/gms/fitness/data/Session;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zza:J

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzb:J

    iget-object v6, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzc:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzd:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zze:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzf:I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzg:Ljava/lang/Long;

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/fitness/data/Session;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/fitness/data/zzb;Ljava/lang/Long;)V

    return-object v0
.end method

.method public setActiveTime(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzg:Ljava/lang/Long;

    return-object p0
.end method

.method public setActivity(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzfv;->zza(Ljava/lang/String;)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzfw;->zzbd:Lcom/google/android/gms/internal/fitness/zzfw;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fitness/zzfw;->zza(ILcom/google/android/gms/internal/fitness/zzfw;)Lcom/google/android/gms/internal/fitness/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fitness/zzfw;->zzb()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/fitness/zzfw;->zzaF:Lcom/google/android/gms/internal/fitness/zzfw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fitness/zzfw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    xor-int/2addr v0, v2

    const-string v2, "Unsupported session activity type %s."

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzf:I

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Session description cannot exceed %d characters"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public setEndTime(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "End time should be positive."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzb:J

    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Session name cannot exceed %d characters"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setStartTime(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Start time should be positive."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->zza:J

    return-object p0
.end method
