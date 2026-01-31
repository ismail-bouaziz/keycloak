#!/bin/bash
systemctl daemon-reload
systemctl enable --now keycloak.service
systemctl status keycloak.service

