.class public Lcom/netease/mpay/oversea/h9;
.super Ljava/lang/Object;
.source "SDKEnvironment.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/netease/mpay/oversea/GameLanguage;

.field public l:Z

.field private m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field private q:Z

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->a:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->b:Z

    .line 20
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->c:Z

    .line 22
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->d:Z

    const/4 v2, 0x0

    .line 24
    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->e:Ljava/lang/String;

    .line 25
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->f:Z

    .line 26
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->g:Z

    .line 27
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->h:Z

    const-string v2, "https://sdk-os.mpsdk.easebar.com"

    .line 29
    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    .line 32
    sget-object v2, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->k:Lcom/netease/mpay/oversea/GameLanguage;

    .line 34
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->l:Z

    .line 35
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->m:Z

    const-string v2, ""

    .line 37
    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->n:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->o:Ljava/lang/String;

    const/4 v2, 0x3

    .line 41
    iput v2, p0, Lcom/netease/mpay/oversea/h9;->p:I

    .line 43
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->q:Z

    .line 45
    iput v1, p0, Lcom/netease/mpay/oversea/h9;->r:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/h9;->o:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/h9;->p:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "enableRequestPermission"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->a:Z

    const/4 v0, 0x1

    const-string v1, "enableRequestPermissionRetry"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->b:Z

    const-string v1, "hasRequestPermission"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->c:Z

    const-string v1, "skinPath"

    const-string v2, ""

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/h9;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "isFirstLogin"

    .line 9
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/mpay/oversea/h9;->f:Z

    const-string v2, "isFirstGuestLogin"

    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/mpay/oversea/h9;->g:Z

    const-string v2, "https://sdk-os.mpsdk.easebar.com"

    const-string v3, "default_host"

    .line 11
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    const-string v3, "host"

    .line 12
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    .line 13
    sget-object v2, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/GameLanguage;->index()I

    move-result v2

    const-string v3, "language"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 14
    invoke-static {v2}, Lcom/netease/mpay/oversea/GameLanguage;->getInstance(I)Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/mpay/oversea/h9;->k:Lcom/netease/mpay/oversea/GameLanguage;

    const-string v2, "save_image"

    .line 15
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->l:Z

    const-string v0, "has_minor"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->h:Z

    const-string v0, "is_first_open"

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h9;->m:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h9;->g:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/netease/mpay/oversea/h9;->p:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/h9;->r:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->a:Z

    const-string v1, "enableRequestPermission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->b:Z

    const-string v1, "enableRequestPermissionRetry"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->c:Z

    const-string v1, "hasRequestPermission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/h9;->e:Ljava/lang/String;

    const-string v1, "skinPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->f:Z

    const-string v1, "isFirstLogin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->g:Z

    const-string v1, "isFirstGuestLogin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    const-string v1, "default_host"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    const-string v1, "host"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/h9;->k:Lcom/netease/mpay/oversea/GameLanguage;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/GameLanguage;->index()I

    move-result v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->l:Z

    const-string v1, "save_image"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->h:Z

    const-string v1, "has_minor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->m:Z

    const-string v1, "is_first_open"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/netease/mpay/oversea/h9;->o:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h9;->f:Z

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p1

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->f:Z

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/e5;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/h9;->n:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized c(Z)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFirstOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h9;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h9;->k:Lcom/netease/mpay/oversea/GameLanguage;

    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h9;->q:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->g:Z

    return v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFirstOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/h9;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/h9;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/h9;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h9;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    return-void
.end method
