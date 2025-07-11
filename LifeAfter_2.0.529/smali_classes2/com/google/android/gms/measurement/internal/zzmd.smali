.class final Lcom/google/android/gms/measurement/internal/zzmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# instance fields
.field protected zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlx;

.field private zzc:J

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlx;)V
    .locals 2

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmg;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzlx;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzmg;-><init>(Lcom/google/android/gms/measurement/internal/zzmd;Lcom/google/android/gms/measurement/internal/zzif;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzd:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzc:J

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zza:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzmd;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzmd;->zza(ZZJ)Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(J)V

    return-void
.end method


# virtual methods
.method final zza(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zza:J

    sub-long v0, p1, v0

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zza:J

    return-wide v0
.end method

.method final zza()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzd:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zza()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzc:J

    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zza:J

    return-void
.end method

.method public final zza(ZZJ)Z
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()V

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoh;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzbn:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlx;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzk:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 31
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzc:J

    sub-long v0, p3, v0

    if-nez p1, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    if-nez p2, :cond_3

    .line 38
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/measurement/internal/zzmd;->zza(J)J

    move-result-wide v0

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Recording user engagement, ms"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_et"

    .line 41
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzu()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Z)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    .line 45
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Lcom/google/android/gms/measurement/internal/zzki;Landroid/os/Bundle;Z)V

    if-nez p2, :cond_4

    .line 47
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzm()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p2

    const-string v0, "auto"

    const-string v2, "_e"

    .line 48
    invoke-virtual {p2, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    :cond_4
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzc:J

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzd:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zza()V

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzd:Lcom/google/android/gms/measurement/internal/zzaw;

    const-wide/32 p2, 0x36ee80

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(J)V

    return v1
.end method

.method final zzb(J)V
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzd:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zza()V

    return-void
.end method

.method final zzc(J)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzb:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzd:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zza()V

    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zzc:J

    .line 23
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzmd;->zza:J

    return-void
.end method
