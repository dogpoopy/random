.class public Lcom/netease/ntunisdk/CommonSdkProxyActivity;
.super Landroid/app/Activity;
.source "CommonSdkProxyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TYPE_APIS:I = 0x5

.field private static final TYPE_EXIT:I = 0x4

.field private static final TYPE_LOGIN:I = 0x0

.field private static final TYPE_MANAGER:I = 0x2

.field private static final TYPE_ORDERINFO:I = 0x7

.field private static final TYPE_PAY:I = 0x1

.field private static final TYPE_PROTOCOL:I = 0x3

.field private static final TYPE_USRINFO:I = 0x6


# instance fields
.field private etAccount:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private extras:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static apis(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 64
    invoke-static {p0, p1, v0, p2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method public static exit(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, p1, v0, v1}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method private finishWithResult(ILjava/lang/String;)V
    .locals 2

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extras"

    .line 358
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 360
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->finish()V

    return-void
.end method

.method private init()V
    .locals 7

    .line 132
    iget v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->type:I

    const-string v1, "id"

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v2, 0x2

    const-string v3, "apis"

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-eq v0, v2, :cond_8

    if-eq v0, v4, :cond_7

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/4 v2, 0x7

    if-eq v0, v2, :cond_5

    const-string v0, "uni_comm_ibtn_cancel_apis"

    .line 266
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "apis_close"

    .line 267
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "ed"

    .line 275
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uni_comm_tv_apis1"

    .line 276
    invoke-static {p0, v4, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 277
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "un"

    .line 279
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uni_comm_tv_apis2"

    .line 280
    invoke-static {p0, v3, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 281
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v2, "todo"

    .line 284
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uni_comm_btn_todo"

    .line 287
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 292
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    const-string v3, "on_new_intent"

    .line 295
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "\u6d4b\u8bd5onNewIntent"

    goto :goto_0

    :cond_2
    const-string v3, "on_req_perm_result"

    .line 297
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "\u6d4b\u8bd5onRequestPermissionsResult"

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 301
    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 304
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_5
    const-string v0, "uni_comm_tv_usrinfo_title"

    .line 250
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 251
    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u8ba2\u5355\u4fe1\u606f"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const-string v0, "uni_comm_tv_usrinfo"

    .line 255
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "uni_comm_ibtn_cancel_usrinfo"

    .line 258
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "usrinfo_close"

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_7
    const-string v0, "uni_comm_ibtn_cancel_exit"

    .line 239
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "exit_close"

    .line 240
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_btn_exit"

    .line 243
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "exit_done"

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "uni_comm_btn_protocol_agree"

    .line 216
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "protocol_agree"

    .line 217
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    if-nez v0, :cond_9

    const/4 v6, 0x0

    goto :goto_1

    :cond_9
    const/16 v6, 0x8

    .line 218
    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "uni_comm_btn_protocol_reject"

    .line 221
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v6, "protocol_reject"

    .line 222
    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez v0, :cond_a

    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    const/16 v6, 0x8

    .line 223
    :goto_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "uni_comm_btn_protocol_confirm"

    .line 226
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v6, "protocol_close"

    .line 227
    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_b

    const/4 v5, 0x0

    .line 228
    :cond_b
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "uni_comm_ibtn_cancel_protocol"

    .line 231
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_c

    const/4 v4, 0x0

    .line 233
    :cond_c
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_d
    const-string v0, "uni_comm_id_logout"

    .line 195
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "logout"

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_id_apis"

    .line 199
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_id_orders"

    .line 203
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "orders"

    .line 204
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_ibtn_cancel_manager"

    .line 207
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "manager_close"

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_e
    const-string v0, "uni_comm_ic_cancel_pay"

    .line 165
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "pay_cancel"

    .line 166
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;

    move-result-object v0

    const-string v2, "uni_comm_tv_price"

    .line 171
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 172
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v3

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "uni_comm_tv_product_info"

    .line 174
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 175
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "uni_comm_tv_pid"

    .line 177
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 178
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "uni_comm_btn_order_suc"

    .line 180
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "order_suc"

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_btn_order_fail"

    .line 184
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "order_fail"

    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_btn_order_unknown"

    .line 188
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "order_unknown"

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 135
    :cond_f
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "uni_comm_ic_cancel_login"

    .line 138
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "login_cancel"

    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_btn_login"

    .line 142
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "do_login"

    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_edit_account"

    .line 147
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etAccount:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 149
    iget-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etAccount:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    const-string v0, "uni_comm_edit_psw"

    .line 152
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etPwd:Landroid/widget/EditText;

    .line 153
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const-string v0, "uni_comm_ic_account_right"

    .line 155
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "clear_account"

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "uni_comm_ic_psw_right"

    .line 159
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_3
    return-void
.end method

.method private login()V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "account"

    .line 388
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "psw"

    .line 389
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extras"

    const-string v1, "do_login"

    .line 390
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 391
    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->finish()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\u548c\u5bc6\u7801"

    .line 384
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static login(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, p1, v0, p2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method public static manager(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 52
    invoke-static {p0, p1, v0, p2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method private static open(Landroid/app/Activity;IILjava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/ntunisdk/CommonSdkProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 77
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extras"

    .line 78
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static orderinfo(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    .line 72
    invoke-static {p0, p1, v0, p2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method public static pay(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, p1, v0, p2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method private pay(Ljava/lang/String;)V
    .locals 3

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    const-string v2, "order"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extras"

    .line 398
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 399
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 400
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->finish()V

    return-void
.end method

.method public static protocol(Landroid/app/Activity;IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const/4 v0, 0x3

    .line 56
    invoke-static {p0, p1, v0, p2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method

.method public static userinfo(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 68
    invoke-static {p0, p1, v0, p2}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->open(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 365
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x6e

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    .line 367
    invoke-virtual {p0, p2, p3}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 405
    iget-object p1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etPwd:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 407
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 411
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "apis"

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x6e

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->apis(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "logout"

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "exit_done"

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "protocol_reject"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "on_new_intent"

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "on_req_perm_result"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "login_cancel"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "orders"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "apis_close"

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "manager_close"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "usrinfo_close"

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "exit_close"

    .line 335
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "protocol_close"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "protocol_agree"

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "do_login"

    .line 340
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->login()V

    goto :goto_2

    :cond_3
    const-string v0, "clear_account"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    iget-object p1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->etAccount:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    const-string v0, ""

    .line 344
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string v0, "pay_cancel"

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "order_suc"

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "order_fail"

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "order_unknown"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 352
    :cond_5
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->pay(Ljava/lang/String;)V

    goto :goto_2

    .line 339
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->finish()V

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, -0x1

    .line 330
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->finishWithResult(ILjava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->type:I

    .line 91
    invoke-virtual {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extras"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->extras:Ljava/lang/String;

    .line 94
    iget p1, p0, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->type:I

    const-string v0, "layout"

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const-string p1, "uni_comm_apis"

    .line 122
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "uni_comm_uerinfo"

    .line 117
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "uni_comm_exit"

    .line 112
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "uni_comm_protocol"

    .line 108
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_3
    const-string p1, "uni_comm_manager"

    .line 104
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_4
    const-string p1, "uni_comm_pay"

    .line 100
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_5
    const-string p1, "uni_comm_login"

    .line 96
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 125
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->setContentView(I)V

    .line 127
    invoke-direct {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->init()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p1, p2, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/netease/ntunisdk/CommonSdkProxyActivity;->login()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
