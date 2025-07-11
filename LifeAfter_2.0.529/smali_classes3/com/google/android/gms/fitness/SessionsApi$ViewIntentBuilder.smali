.class public Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/SessionsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewIntentBuilder"
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/fitness/data/Session;

.field private zzc:Ljava/lang/String;

.field private zzd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/Session;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Session must be set"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "vnd.google.fitness.VIEW"

    .line 2
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/Session;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Session;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Session;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/Session;

    const-string v3, "vnd.google.fitness.session"

    .line 4
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToIntentExtra(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzd:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/Session;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Session;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzc:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzc:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/content/Intent;

    .line 6
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zza:Landroid/content/Context;

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    .line 9
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v3

    :cond_3
    :goto_1
    return-object v0
.end method

.method public setPreferredApplication(Ljava/lang/String;)Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzc:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzd:Z

    return-object p0
.end method

.method public setSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/SessionsApi$ViewIntentBuilder;->zzb:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method
