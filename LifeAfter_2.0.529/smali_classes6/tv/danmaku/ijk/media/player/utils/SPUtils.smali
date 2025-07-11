.class public Ltv/danmaku/ijk/media/player/utils/SPUtils;
.super Ljava/lang/Object;
.source "SPUtils.java"


# static fields
.field static final SP_KEY_SN:Ljava/lang/String; = "key_sn"

.field private static final SWITCHER_SHARED_PREFERENCE_FILE_NAME:Ljava/lang/String; = "com.netease.cclive.sp"

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 2

    .line 14
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "com.netease.cclive.sp"

    .line 15
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static getSwitcherValueInt(Ljava/lang/String;)I
    .locals 2

    .line 43
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static getSwitcherValueInt(Ljava/lang/String;I)I
    .locals 1

    .line 58
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 63
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return p1
.end method

.method public static getSwitcherValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static getSwitcherValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-object p1

    .line 91
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public static setSwicherString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setSwitcherInt(Ljava/lang/String;I)V
    .locals 1

    .line 32
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/SPUtils;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
