.class final Lcom/google/android/gms/measurement/internal/zzgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzby;

.field private final synthetic zzb:Landroid/content/ServiceConnection;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgl;Lcom/google/android/gms/internal/measurement/zzby;Landroid/content/ServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzb:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgl;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgl;->zza(Lcom/google/android/gms/measurement/internal/zzgl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzb:Landroid/content/ServiceConnection;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzby;)Landroid/os/Bundle;

    move-result-object v3

    .line 5
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 7
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhf;->zzy()V

    if-eqz v3, :cond_a

    const-string v5, "install_begin_timestamp_seconds"

    const-wide/16 v6, 0x0

    .line 9
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    cmp-long v5, v8, v6

    if-nez v5, :cond_0

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Service response is missing Install Referrer install timestamp"

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v5, "install_referrer"

    .line 16
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_3

    .line 20
    :cond_1
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v12

    const-string v13, "InstallReferrer API result"

    invoke-virtual {v12, v13, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 22
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "?"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpy;->zza()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhf;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbi;->zzbz:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    .line 25
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhf;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbi;->zzct:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    .line 26
    :goto_1
    invoke-virtual {v12, v5, v13, v14}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_4

    .line 28
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "No campaign params defined in Install Referrer result"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string v12, "medium"

    .line 30
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    const-string v13, "(not set)"

    .line 32
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "organic"

    .line 33
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_7

    const-string v12, "referrer_click_timestamp_seconds"

    .line 35
    invoke-virtual {v3, v12, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    mul-long v12, v12, v10

    cmp-long v3, v12, v6

    if-nez v3, :cond_6

    .line 37
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "Install Referrer is missing click timestamp for ad campaign"

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v3, "click_timestamp"

    .line 42
    invoke-virtual {v5, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    :cond_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-nez v3, :cond_8

    .line 45
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from module while it may have already been logged."

    .line 48
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 49
    :cond_8
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 50
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 52
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from gmscore with "

    const-string v7, "referrer API v2"

    .line 55
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "_cis"

    .line 56
    invoke-virtual {v5, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v3

    const-string v6, "auto"

    const-string v7, "_cmp"

    .line 59
    invoke-virtual {v3, v6, v7, v5, v2}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_9
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v3, "No referrer defined in Install Referrer response"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    .line 61
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_b
    return-void
.end method
