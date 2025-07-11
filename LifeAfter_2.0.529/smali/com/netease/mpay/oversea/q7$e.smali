.class Lcom/netease/mpay/oversea/q7$e;
.super Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;
.source "PassportLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q7;->a(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/q7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenProtocol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->f(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "agreement"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/q7;->g(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v1}, Lcom/netease/mpay/oversea/q7;->h(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getOriginActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    iget-object p3, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p3}, Lcom/netease/mpay/oversea/q7;->i(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object p3

    check-cast p3, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getOriginActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v1}, Lcom/netease/mpay/oversea/q7;->j(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    iget-object p3, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p3}, Lcom/netease/mpay/oversea/q7;->k(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/q7;->m(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    .line 19
    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->n(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v1, 0x0

    invoke-direct {p3, p2, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ui/w$a;)V

    .line 20
    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/ui/x;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOutLinkClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p3}, Lcom/netease/mpay/oversea/q7;->o(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object p3

    const-string v0, "neteasegames_login_policy"

    invoke-virtual {p2, p3, v0}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p2}, Lcom/netease/mpay/oversea/q7;->p(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$e;->a:Lcom/netease/mpay/oversea/q7;

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->q(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ui/w$a;)V

    .line 5
    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/ui/x;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
