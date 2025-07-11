.class public Lcom/google/android/gms/measurement/internal/zzhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzif;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzhf;


# instance fields
.field final zza:J

.field private zzaa:Ljava/lang/Boolean;

.field private zzab:J

.field private volatile zzac:Ljava/lang/Boolean;

.field private zzad:Ljava/lang/Boolean;

.field private zzae:Ljava/lang/Boolean;

.field private volatile zzaf:Z

.field private zzag:I

.field private zzah:I

.field private zzai:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzae;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzaf;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzgd;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzfr;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzgy;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzlx;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zznd;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzfq;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzkh;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zziq;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zzb;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzkc;

.field private final zzu:Ljava/lang/String;

.field private zzv:Lcom/google/android/gms/measurement/internal/zzfo;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzkp;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzba;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzfl;

.field private zzz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 9

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzz:Z

    .line 142
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzio;->zza:Landroid/content/Context;

    .line 145
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Landroid/content/Context;)V

    .line 146
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzh:Lcom/google/android/gms/measurement/internal/zzae;

    .line 148
    sput-object v2, Lcom/google/android/gms/measurement/internal/zzff;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    .line 149
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzio;->zza:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 150
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    .line 151
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zze:Ljava/lang/String;

    .line 152
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzd:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzf:Ljava/lang/String;

    .line 153
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzh:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzg:Z

    .line 154
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zze:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    .line 155
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzu:Ljava/lang/String;

    const/4 v2, 0x1

    .line 156
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf:Z

    .line 157
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    if-eqz v3, :cond_1

    .line 158
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 159
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    const-string v5, "measurementEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 160
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 161
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzad:Ljava/lang/Boolean;

    .line 162
    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 163
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 164
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzae:Ljava/lang/Boolean;

    .line 166
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzb(Landroid/content/Context;)V

    .line 168
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 169
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 171
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 172
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 173
    :cond_2
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    .line 175
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 176
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 178
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzgd;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 180
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 181
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 183
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 186
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 188
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zznd;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 190
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 191
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    .line 193
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzin;

    invoke-direct {v3, p1, p0}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 194
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzfp;)V

    .line 195
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzo:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 197
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzb;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 198
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzs:Lcom/google/android/gms/measurement/internal/zzb;

    .line 200
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 202
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 203
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzq:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 205
    new-instance v3, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 207
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 208
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    .line 210
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzlx;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 213
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzm:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 215
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 217
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 218
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzt:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 220
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 223
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 224
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzdd;->zzb:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr v0, v2

    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    .line 230
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 231
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    if-nez v4, :cond_4

    .line 232
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-direct {v4, v1}, Lcom/google/android/gms/measurement/internal/zzjx;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    :cond_4
    if-eqz v0, :cond_6

    .line 234
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 235
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 236
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 237
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 238
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 241
    :cond_6
    :goto_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;Lcom/google/android/gms/measurement/internal/zzio;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzhf;
    .locals 12

    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdd;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    .line 58
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    if-nez v0, :cond_3

    .line 61
    const-class v0, Lcom/google/android/gms/measurement/internal/zzhf;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/Long;)V

    .line 66
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzhf;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 67
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 68
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 69
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 70
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 71
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Z)V

    .line 75
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zze;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhf;Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 97
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 100
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzx:Lcom/google/android/gms/measurement/internal/zzba;

    .line 102
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfl;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzf:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;J)V

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 105
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 107
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 110
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzv:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 112
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 116
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzad()V

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzad()V

    .line 118
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-wide/32 v1, 0x14051

    .line 120
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 129
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 134
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzz:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzae()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzid;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzai()Lcom/google/android/gms/measurement/internal/zzkc;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzt:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzt:Lcom/google/android/gms/measurement/internal/zzkc;

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzdd;)V
    .locals 9

    .line 318
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 319
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 321
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcg:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 325
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 326
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zznd;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    .line 330
    invoke-static {v3, v2, v1, v4}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 331
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Registered app receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzm()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result v1

    .line 336
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v3, "google_analytics_default_allow_ad_storage"

    .line 338
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v4, "google_analytics_default_allow_analytics_storage"

    .line 343
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, -0xa

    const/4 v5, 0x0

    const/16 v6, 0x1e

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v7

    .line 347
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 348
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_1

    .line 349
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v6, :cond_3

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    .line 350
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {v2, v5, v5, v4}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    .line 351
    invoke-virtual {v1, v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;J)V

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 353
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    .line 354
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 356
    invoke-static {v1, v6}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzih;->zzi()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_6

    .line 361
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;J)V

    move-object v0, v1

    .line 362
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 363
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 365
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbi;->zzcl:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zza()I

    move-result v0

    .line 370
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v3, "google_analytics_default_allow_ad_user_data"

    .line 372
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 375
    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 376
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/lang/Boolean;I)V

    .line 377
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzay;)V

    goto/16 :goto_2

    .line 379
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_8

    if-ne v0, v6, :cond_9

    .line 380
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/lang/Boolean;I)V

    .line 381
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzay;)V

    goto :goto_2

    .line 383
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    .line 384
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 385
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 386
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zzg()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 388
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzay;)V

    .line 389
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 390
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzh:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 392
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 393
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 395
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zze:Ljava/lang/String;

    .line 396
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "allow_personalized_ads"

    .line 397
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 398
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-nez p1, :cond_c

    .line 400
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Persisting first open"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 402
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zzb()V

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf()Z

    move-result p1

    if-nez p1, :cond_11

    .line 404
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 405
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 406
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 407
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 408
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 410
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 411
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-nez p1, :cond_10

    .line 412
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 413
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzw()Z

    move-result p1

    if-nez p1, :cond_10

    .line 415
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 416
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 419
    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 420
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_10

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 422
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 424
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 425
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 426
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 427
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object p1

    .line 428
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzx()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzw()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()V

    .line 434
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzi()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaa()V

    .line 435
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzae()V

    .line 436
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzad()V

    .line 437
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 439
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Ljava/lang/String;)V

    .line 442
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzm()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object p1

    .line 443
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzih$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzih$zza;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 445
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 446
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zza()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 448
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 449
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbi;->zzbm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 450
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzx()Z

    move-result p1

    if-nez p1, :cond_16

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 452
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 454
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 456
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result p1

    .line 457
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa()Z

    move-result v0

    if-nez v0, :cond_18

    .line 458
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 459
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzv()Z

    move-result v0

    if-nez v0, :cond_18

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Z)V

    :cond_18
    if-eqz p1, :cond_19

    .line 462
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zziq;->zzaj()V

    .line 463
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzs()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzlx;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()V

    .line 464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzr()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzr()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    .line 466
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Landroid/os/Bundle;)V

    .line 467
    :cond_1a
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 468
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 469
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbi;->zzcg:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 470
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzw()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 471
    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzhe;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 472
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 473
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzj:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Z)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 5

    const-string p1, "gbraid"

    const-string p5, "gclid"

    const-string v0, ""

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_0

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_0

    const/16 v2, 0x130

    if-ne p2, v2, :cond_1

    :cond_0
    if-nez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 265
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzgd;->zzo:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Z)V

    if-eqz p4, :cond_9

    .line 268
    array-length p2, p4

    if-nez p2, :cond_3

    goto/16 :goto_2

    .line 271
    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    .line 272
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    .line 274
    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-virtual {p3, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 276
    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    .line 278
    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 279
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    .line 282
    :cond_4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 283
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 284
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 285
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcs:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 286
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzi(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 287
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 289
    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 291
    :cond_5
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    .line 295
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 297
    :cond_7
    :goto_1
    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cis"

    const-string p4, "ddp"

    .line 298
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p1, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    .line 301
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 302
    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 303
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p1

    .line 307
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 269
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void
.end method

.method final zza(Z)V
    .locals 0

    .line 311
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    return-void
.end method

.method final zzaa()V
    .locals 1

    .line 309
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    return-void
.end method

.method public final zzab()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzac()Z
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzc()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzad()Z
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 479
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf:Z

    return v0
.end method

.method public final zzae()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected final zzaf()Z
    .locals 6

    .line 482
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzz:Z

    if-eqz v0, :cond_6

    .line 485
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 486
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzab:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_5

    .line 487
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 488
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 489
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzab:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 492
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzab:J

    .line 494
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 497
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 499
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 501
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 503
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 504
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    .line 505
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 509
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 483
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzag()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 511
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzg:Z

    return v0
.end method

.method public final zzah()Z
    .locals 12

    .line 513
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 514
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzai()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 519
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 520
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzp()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 521
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 522
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 525
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzai()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzc()Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return v9

    .line 528
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 530
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 531
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcn:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v4

    .line 535
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 536
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzaa()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 539
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzam;->zza:Landroid/os/Bundle;

    :cond_2
    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 541
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzah:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzah:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    const/4 v9, 0x1

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    if-eqz v9, :cond_4

    const-string v1, "Retrying."

    goto :goto_0

    :cond_4
    const-string v1, "Skipping."

    .line 544
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve DMA consent from the service, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " retryCount"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzah:I

    .line 545
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 546
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v9

    :cond_5
    const/16 v5, 0x64

    .line 549
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v6

    const-string v7, "&gcs="

    .line 550
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzih;->zzf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v5

    const-string v6, "&dma="

    .line 554
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzay;->zzd()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzay;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "&dma_cps="

    .line 557
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzay;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v5, :cond_8

    const/4 v4, 0x0

    :cond_8
    const-string v3, "&npa="

    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Consent query parameters to Bow"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v3

    .line 563
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    const-wide/32 v4, 0x14051

    .line 565
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    move-result-wide v7

    const-wide/16 v10, 0x1

    sub-long/2addr v7, v10

    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v1, v3

    move-wide v2, v4

    move-object v4, v0

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v10

    .line 568
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zznd;->zza(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 570
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzai()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 572
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 573
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzab()V

    .line 574
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzke;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzkc;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzkb;)V

    .line 577
    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/Runnable;)V

    :cond_a
    return v9

    .line 523
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return v9
.end method

.method public final zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzb(Z)V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 315
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf:Z

    return-void
.end method

.method public final zzc()I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzv()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzae:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzad()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    return v0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzu()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x3

    return v0

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x4

    return v0

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzad:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x5

    return v0

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x7

    return v0

    :cond_a
    return v1
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzh:Lcom/google/android/gms/measurement/internal/zzae;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzb;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzs:Lcom/google/android/gms/measurement/internal/zzb;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzx:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzx:Lcom/google/android/gms/measurement/internal/zzba;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzfl;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzv:Lcom/google/android/gms/measurement/internal/zzfo;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzfq;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzo:Lcom/google/android/gms/measurement/internal/zzfq;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzae()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzgd;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzid;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    return-object v0
.end method

.method final zzo()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zziq;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzkh;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzq:Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzq:Lcom/google/android/gms/measurement/internal/zzkh;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzlx;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzm:Lcom/google/android/gms/measurement/internal/zzlx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzm:Lcom/google/android/gms/measurement/internal/zzlx;

    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zznd;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzid;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    return-object v0
.end method

.method public final zzu()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzv()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzw()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method final zzy()V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzz()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
