.class public Lcom/netease/environment/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# static fields
.field private static OooO00o:Landroid/content/SharedPreferences;


# direct methods
.method public static OooO00o(Landroid/content/Context;J)J
    .locals 1

    const-string v0, "task_timeout"

    .line 8
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    if-nez p0, :cond_0

    return-wide p2

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static OooO00o(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x8000

    const-string v1, "environment_preferences_config"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o:Landroid/content/SharedPreferences;

    .line 4
    :cond_0
    sget-object p0, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regex_file_url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static OooO00o(Landroid/content/Context;Z)Z
    .locals 1

    const-string v0, "enable"

    .line 7
    invoke-static {p0, v0, p1}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p2

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "task_timeout"

    .line 11
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0O0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static OooO0O0(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static OooO0O0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static OooO0O0(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "downlaoding"

    .line 10
    invoke-static {p0, v0, p1}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static OooO0OO(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "update_data_time"

    .line 5
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0O0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static OooO0OO(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "enable"

    .line 6
    invoke-static {p0, v0, p1}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static OooO0Oo(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "update_interval"

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0O0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static OooO0Oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regex_file_url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
