.class final Lcom/google/android/gms/measurement/internal/zzjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjx;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    .line 2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 3
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpy;->zza()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbi;->zzby:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbi;->zzcs:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 8
    :goto_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "Activity created with data \'referrer\' without required params"

    const-string v10, "_cis"

    const-string v11, "utm_medium"

    const-string v12, "utm_source"

    const-string v13, "utm_campaign"

    const-string v15, "gclid"

    if-eqz v8, :cond_2

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v7, :cond_3

    const-string v8, "gbraid"

    .line 11
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 12
    :cond_3
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 13
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 14
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "utm_id"

    .line 15
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "dclid"

    .line 16
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "srsltid"

    .line 17
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v4, :cond_4

    const-string v8, "sfmc_id"

    .line 18
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 19
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "https://google.com/search?"

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 23
    invoke-virtual {v3, v8, v4, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "referrer"

    .line 25
    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_3
    const-string v4, "_cmp"

    if-eqz p1, :cond_a

    .line 29
    :try_start_2
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v7

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpy;->zza()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbi;->zzby:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v8, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    .line 32
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v14

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbi;->zzcs:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v14, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v5, p2

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v5, p2

    const/4 v14, 0x0

    .line 33
    :goto_5
    invoke-virtual {v7, v5, v8, v14}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v7, "intent"

    .line 35
    invoke-virtual {v5, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v3, :cond_9

    .line 37
    invoke-virtual {v3, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "_cer"

    const-string v8, "gclid=%s"

    new-array v10, v6, [Ljava/lang/Object;

    .line 39
    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v10, v16

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    .line 41
    :goto_6
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v7, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzu;

    invoke-virtual {v7, v0, v5}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    .line 43
    :goto_7
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    return-void

    .line 45
    :cond_b
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    const-string v7, "Activity created with referrer"

    invoke-virtual {v5, v7, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbi;->zzbi:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "_ldl"

    const-string v8, "auto"

    if-eqz v5, :cond_d

    if-eqz v3, :cond_c

    .line 48
    :try_start_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzu;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    .line 50
    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v3, "Referrer does not contain valid parameters"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :goto_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 54
    :cond_d
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 56
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 57
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "utm_term"

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "utm_content"

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_10

    .line 61
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_10
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 64
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_11
    return-void

    :catch_0
    move-exception v0

    .line 67
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.android.vending.referral_url"

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    if-eqz v5, :cond_6

    .line 86
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gs"

    goto :goto_1

    :cond_4
    const-string v0, "auto"

    :goto_1
    move-object v6, v0

    const-string v0, "referrer"

    .line 92
    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez p2, :cond_5

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 94
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzka;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lcom/google/android/gms/measurement/internal/zzjx;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 87
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 102
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 103
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkh;->zzb(Landroid/app/Activity;)V

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlz;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlz;-><init>(Lcom/google/android/gms/measurement/internal/zzlx;J)V

    .line 110
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzma;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzma;-><init>(Lcom/google/android/gms/measurement/internal/zzlx;J)V

    .line 115
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkh;->zzc(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zzb(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
