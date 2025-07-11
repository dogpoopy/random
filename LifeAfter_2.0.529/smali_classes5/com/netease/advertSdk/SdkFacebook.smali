.class public Lcom/netease/advertSdk/SdkFacebook;
.super Ljava/lang/Object;
.source "SdkFacebook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertFacebook"

.field private static s_ctx:Landroid/content/Context;

.field private static s_logger:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delValue2Sum(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "FB_VALUE2SUM"

    .line 98
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private static disagreeEventPromotion()Z
    .locals 2

    .line 215
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "DISAGREED_PROTOCOLS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "event_promotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static handleActivate()V
    .locals 5

    const-string v0, "AdvertFacebook"

    const-string v1, "handleActivate"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 124
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMP forbide logEvent"

    .line 125
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "disagreeEventPromotion forbide logEvent"

    .line 129
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "fb_mobile_activate_app"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public static handleLevel(Ljava/lang/String;)V
    .locals 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertFacebook"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 107
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CMP forbide logEvent"

    .line 108
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "disagreeEventPromotion forbide logEvent"

    .line 112
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_level"

    .line 116
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object p0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    const-wide/16 v1, 0x0

    const-string v3, "fb_mobile_level_achieved"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public static handlePurchase(Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "AdvertFacebook"

    const-string v1, "handlePurchase"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 153
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "CMP forbide logEvent"

    .line 154
    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "disagreeEventPromotion forbide logEvent"

    .line 158
    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_1
    sget-object v0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string p0, "fb_mobile_purchase"

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public static handleRegistration(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "AdvertFacebook"

    const-string v1, "handleRegistration"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 138
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "CMP forbide logEvent"

    .line 139
    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "disagreeEventPromotion forbide logEvent"

    .line 143
    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_1
    sget-object v0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    const-wide/16 v1, 0x0

    const-string v3, "fb_mobile_complete_registration"

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "AdvertFacebook"

    const-string v1, "init"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sput-object p0, Lcom/netease/advertSdk/SdkFacebook;->s_ctx:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-virtual {v1, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDebug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setIsDebugEnabled(Z)V

    .line 32
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    sput-object p0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    .line 35
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertFacebook"

    const-string v1, "logEvent"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "disagreeEventPromotion forbide logEvent"

    const-string v2, "CMP forbide logEvent"

    const-wide/16 v3, 0x0

    if-nez p2, :cond_4

    .line 60
    invoke-static {p1}, Lcom/netease/advertSdk/base/JsonUtils;->isJson(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    invoke-static {p1}, Lcom/netease/advertSdk/base/JsonUtils;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v3, "FB_VALUE2SUM"

    .line 63
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    .line 66
    :cond_1
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 67
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_2
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_3
    sget-object v0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {p1}, Lcom/netease/advertSdk/SdkFacebook;->delValue2Sum(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_1

    .line 79
    :cond_4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 83
    :goto_0
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 84
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result p1

    if-nez p1, :cond_5

    .line 85
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_5
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 89
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_6
    sget-object p1, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {p1, p0, v3, v4, p2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public static onPause()V
    .locals 5

    const-string v0, "AdvertFacebook"

    const-string v1, "onPause"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v1, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    if-eqz v1, :cond_2

    .line 186
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 187
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMP forbide logEvent"

    .line 188
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "disagreeEventPromotion forbide logEvent"

    .line 192
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_1
    sget-object v0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "fb_mobile_activate_app"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public static onResume()V
    .locals 5

    const-string v0, "AdvertFacebook"

    const-string v1, "onResume"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    if-eqz v1, :cond_2

    .line 169
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->setLDU()V

    .line 170
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->passCmp()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMP forbide logEvent"

    .line 171
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/netease/advertSdk/SdkFacebook;->disagreeEventPromotion()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "disagreeEventPromotion forbide logEvent"

    .line 175
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    sget-object v0, Lcom/netease/advertSdk/SdkFacebook;->s_logger:Lcom/facebook/appevents/AppEventsLogger;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "fb_mobile_activate_app"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method private static passCmp()Z
    .locals 2

    .line 201
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_CMP"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "NT_CMP_NOT_IN_EEA"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "NT_CMP_CONSENT_VENDOR_LIST"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "s7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static setLDU()V
    .locals 4

    .line 42
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ENABLE_LDU"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "AdvertFacebook"

    if-eqz v0, :cond_1

    const-string v0, "ENABLE_LDU\uff1atrue"

    .line 44
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "LDU"

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0, v2, v2}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    const-string v0, "ENABLE_LDU\uff1afalse"

    .line 47
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 48
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;)V

    :goto_1
    return-void
.end method
