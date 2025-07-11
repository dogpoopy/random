.class public Lcom/netease/ntunisdk/base/model/SdkRole;
.super Lcom/netease/ntunisdk/base/model/SdkModel;
.source "SdkRole.java"


# instance fields
.field public capability:Ljava/lang/String;

.field public gangid:Ljava/lang/String;

.field public gangname:Ljava/lang/String;

.field public hostid:Ljava/lang/String;

.field public hostname:Ljava/lang/String;

.field public menpaiid:Ljava/lang/String;

.field public menpainame:Ljava/lang/String;

.field public regionid:Ljava/lang/String;

.field public regionname:Ljava/lang/String;

.field public rolecreatetime:Ljava/lang/String;

.field public roleid:Ljava/lang/String;

.field public rolelevel:Ljava/lang/String;

.field public rolename:Ljava/lang/String;

.field public typeid:Ljava/lang/String;

.field public typename:Ljava/lang/String;

.field public viplevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/model/SdkModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkModel;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->roleid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fromJson(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "roleid"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->roleid:Ljava/lang/String;

    const-string v0, "rolename"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolename:Ljava/lang/String;

    const-string v0, "rolecreatetime"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolecreatetime:Ljava/lang/String;

    const-string v0, "hostid"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostid:Ljava/lang/String;

    const-string v0, "hostname"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostname:Ljava/lang/String;

    const-string v0, "rolelevel"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolelevel:Ljava/lang/String;

    const-string v0, "viplevel"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->viplevel:Ljava/lang/String;

    const-string v0, "typeid"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typeid:Ljava/lang/String;

    const-string v0, "typename"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typename:Ljava/lang/String;

    const-string v0, "menpaiid"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpaiid:Ljava/lang/String;

    const-string v0, "menpainame"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpainame:Ljava/lang/String;

    const-string v0, "capability"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->capability:Ljava/lang/String;

    const-string v0, "gangid"

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangid:Ljava/lang/String;

    const-string v0, "gangname"

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangname:Ljava/lang/String;

    const-string v0, "regionid"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionid:Ljava/lang/String;

    const-string v0, "regionname"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionname:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 138
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "roleid"

    .line 139
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->roleid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rolename"

    .line 140
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolename:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rolecreatetime"

    .line 141
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolecreatetime:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hostid"

    .line 142
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hostname"

    .line 143
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rolelevel"

    .line 144
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolelevel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "viplevel"

    .line 145
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->viplevel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "typeid"

    .line 146
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typeid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "typename"

    .line 147
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typename:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "menpaiid"

    .line 148
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpaiid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "menpainame"

    .line 149
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpainame:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "capability"

    .line 150
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->capability:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gangid"

    .line 151
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gangname"

    .line 152
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangname:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "regionid"

    .line 153
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "regionname"

    .line 154
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionname:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 157
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public wrapFrom(Ljava/lang/Object;)V
    .locals 1

    .line 112
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_UID"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->roleid:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_NAME"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolename:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_ROLE_CTIME"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolecreatetime:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_HOSTID"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostid:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_HOSTNAME"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostname:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_GRADE"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolelevel:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_VIP"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->viplevel:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_ROLE_TYPE_ID"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typeid:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_ROLE_TYPE_NAME"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typename:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_MENPAI_ID"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpaiid:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_MENPAI_NAME"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpainame:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_CAPABILITY"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->capability:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_GANG_ID"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangid:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_GANG_NAME"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangname:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "USERINFO_ORG"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangname:Ljava/lang/String;

    .line 130
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "region_id"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionid:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "region_name"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionname:Ljava/lang/String;

    return-void
.end method

.method public wrapTo()Ljava/lang/Object;
    .locals 3

    .line 51
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 52
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->roleid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->roleid:Ljava/lang/String;

    const-string v2, "USERINFO_UID"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolename:Ljava/lang/String;

    const-string v2, "USERINFO_NAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolecreatetime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolecreatetime:Ljava/lang/String;

    const-string v2, "USERINFO_ROLE_CTIME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostid:Ljava/lang/String;

    const-string v2, "USERINFO_HOSTID"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 65
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->hostname:Ljava/lang/String;

    const-string v2, "USERINFO_HOSTNAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolelevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 68
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->rolelevel:Ljava/lang/String;

    const-string v2, "USERINFO_GRADE"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->viplevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 71
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->viplevel:Ljava/lang/String;

    const-string v2, "USERINFO_VIP"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typeid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 74
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typeid:Ljava/lang/String;

    const-string v2, "USERINFO_ROLE_TYPE_ID"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_7
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 77
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->typename:Ljava/lang/String;

    const-string v2, "USERINFO_ROLE_TYPE_NAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpaiid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 80
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpaiid:Ljava/lang/String;

    const-string v2, "USERINFO_MENPAI_ID"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpainame:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 83
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpainame:Ljava/lang/String;

    const-string v2, "USERINFO_MENPAI_NAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_ORG"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->menpainame:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_a
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->capability:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 91
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->capability:Ljava/lang/String;

    const-string v2, "USERINFO_CAPABILITY"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_b
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 94
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangid:Ljava/lang/String;

    const-string v2, "USERINFO_GANG_ID"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_c
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 97
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->gangname:Ljava/lang/String;

    const-string v2, "USERINFO_GANG_NAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 100
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionid:Ljava/lang/String;

    const-string v2, "region_id"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_e
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 103
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkRole;->regionname:Ljava/lang/String;

    const-string v2, "region_name"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method
